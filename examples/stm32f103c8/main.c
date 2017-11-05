/**
 ******************************************************************************
 * @file    main.c
 * @author  Ac6
 * @version V1.0
 * @date    01-December-2013
 * @brief   Default main function.
 ******************************************************************************
 */

#include "stm32f10x.h"
#include "stm32f10x_gpio.h"
#include "stm32f10x_rcc.h"
#include "stm32f10x_spi.h"

#include "FreeRTOS.h"
#include "task.h"
#include "semphr.h"
#include "queue.h"
#include "nrf24.h"
#include "nRF24L01.h"
#include "NRP.h"
#include "RIP.h"
#include <string.h>
#include <stdbool.h>
#include "additionals.h"
#include <stdio.h>

#define UNUSED __attribute__ ((unused))
unsigned char data[] = { 0xAA, 0xBA, 0xCA, 0xFA };

SemaphoreHandle_t xSPIsemaphore;

/*
 * A2 - CE
 * A1 - CSN
 */
bool radio_send(uint64_t address, const void* buf, uint8_t len, const bool multicast) {
	taskENTER_CRITICAL();
	bool rval;
	radio_openWritingPipe(BASEADDR + address);
	radio_stopListening();
	rval = radio_write_multicast(buf, len, multicast);
	GPIOC->ODR ^= GPIO_Pin_13;
	radio_startListening();
	taskEXIT_CRITICAL();
	return rval;
}

void nrf24_setupPins(void) {
	SPI_InitTypeDef SPI_InitStructure;
	GPIO_InitTypeDef GPIO_InitStructure;

	    // SPI pins
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA, ENABLE);
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_5 | GPIO_Pin_6 | GPIO_Pin_7;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_Init(GPIOA, &GPIO_InitStructure);
	// CE pin, ~CS pin
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_3 | GPIO_Pin_4;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_Init(GPIOA, &GPIO_InitStructure);
	// IRQ pin
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOB, ENABLE);
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_0 | GPIO_Pin_1;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN_FLOATING;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_Init(GPIOB, &GPIO_InitStructure);

	RCC_APB2PeriphClockCmd(RCC_APB2Periph_SPI1, ENABLE);

	SPI_Cmd(SPI1, DISABLE);
	/* SPI2 configuration */
	SPI_InitStructure.SPI_Direction = SPI_Direction_2Lines_FullDuplex;
	SPI_InitStructure.SPI_Mode = SPI_Mode_Master;
	SPI_InitStructure.SPI_DataSize = SPI_DataSize_8b;
	SPI_InitStructure.SPI_CPOL = SPI_CPOL_Low;
	SPI_InitStructure.SPI_CPHA = SPI_CPHA_1Edge;
	SPI_InitStructure.SPI_NSS = SPI_NSS_Soft;
	SPI_InitStructure.SPI_BaudRatePrescaler = SPI_BaudRatePrescaler_4;
	SPI_InitStructure.SPI_FirstBit = SPI_FirstBit_MSB;
	SPI_InitStructure.SPI_CRCPolynomial = 7;
	SPI_Init(SPI1, &SPI_InitStructure);
	/* Enable SPI1   */
	SPI_Cmd(SPI1, ENABLE);
}

uint8_t radio_is_interrupt() {
	if (!GPIO_ReadInputDataBit(GPIOB, GPIO_Pin_0)) {
		if (xSemaphoreTake(xSPIsemaphore, (TickType_t) 1000) == pdTRUE) {
			if (read_register(NRF_STATUS) & _BV(RX_DR)) {
				xSemaphoreGive(xSPIsemaphore);
				return 1;
			}
			xSemaphoreGive(xSPIsemaphore);
		}
	}
	return 0;
}
void CMD_parser(NRP_packet packet)
{
	if ((packet.type == ptData) && (packet._length == 1))
	{
		if (packet.data[0] == 8) //reset
		{
			NVIC_SystemReset();
		}
		if (packet.data[0] == 3) //Get RT
		{
			NRP_packet packet_send;
			packet_send.version = 1;
			packet_send.type = ptData;
			packet_send.source = rx_addr;
			packet_send.destination = packet.source;
			packet_send.ttl = 0;
			//packet._length = routingTableCount * 3
			uint8_t j;
			for (unsigned int i = 0; i < routingTableCount * 3; i++) {
				j = i % 27;
				// Converting 2d array to 1d
				packet_send.data[j] = routingTable[i / 3][i % 3];
				if ((j == 26) || (i == (routingTableCount * 3) - 1))
				{
					packet_send._length = j + 1;
					NRP_send_packet(packet.source, packet_send);
				}
			}
		}
		if (packet.data[0] == 5) // send something
		{
			NRP_packet packet_send;
			packet_send.version = 1;
			packet_send.type = ptData;
			packet_send.source = rx_addr;
			packet_send.destination = packet.source;
			packet_send.ttl = 0;
			packet_send._length = 1;
			packet_send.data[0] = 0xA0;
			uint8_t route_id = uRIP_lookuphost(packet.source);
			
			NRP_send_packet(routingTable[route_id][NextHop], packet_send);
		}
	}
}
void vScanRF(void *pvParameters) {
	uint8_t receivePayload[32];
	static uint8_t len;
	NRP_packet packet;

	for (;;) {
		while (radio_is_interrupt()) {
			if (xSemaphoreTake(xSPIsemaphore, (TickType_t) 1000) == pdTRUE) {
			    /* We were able to obtain the semaphore and can now access the
			     shared resource. */
				len = radio_getDynamicPayloadSize();
				radio_read(receivePayload, len);
				if ((receivePayload[0] & 0x0F) == uRIP_update)
				{
					asm("nop");
				}
				// Display it on screen
				if ((receivePayload[0] >> 4) == 1 && len >= 1) { // Protocol packet! Header rcvd
					packet.version = receivePayload[0] >> 4;
					packet.type = receivePayload[0] & 0x0F;
					packet.destination = receivePayload[1];
					packet.source = receivePayload[2];
					packet.ttl = receivePayload[3];
					packet._length = len - 4;

					if ((uint8_t)packet._length > 0) {
						for (int i = 0; i < packet._length; i++) {
							packet.data[i] = receivePayload[4 + i];
						}
					}
					NRP_parsePacket(packet);
				}
				else {
				    // error!
				}
				/* We have finished accessing the shared resource.  Release the
				 semaphore. */
				xSemaphoreGive(xSPIsemaphore);
			}
		}
	}
}
static uint8_t nrf_status;
void vDiscovery(void *pvParameters) {
	while (1) {
		if (xSemaphoreTake(xSPIsemaphore, (TickType_t) 1000) == pdTRUE) {
		//			radio_stopListening();
		//			radio_send(0x00,data,4,1);
		//			radio_startListening();
		//	uRIP_sendRoutes(0x00);
			uRIP_sendDiscoveryReq();
			xSemaphoreGive(xSPIsemaphore);
		}
		vTaskDelay(1000);
	}
}

void vGarbageCollerctor(void *pvParameters) {
	while (1) {
		if (xSemaphoreTake(xSPIsemaphore, (TickType_t) 1000) == pdTRUE) {
			uRIP_garbageCollector();
			xSemaphoreGive(xSPIsemaphore);
		}
			vTaskDelay(1000);
	}
}

void vApplicationStackOverflowHook(TaskHandle_t xTask, signed char *pcTaskName) {
	asm("bkpt");
}

int main(void) {
	GPIO_InitTypeDef GPIO_InitStructure;

	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOC, ENABLE);
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_13;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_Init(GPIOC, &GPIO_InitStructure);

	
	nrf24_setupPins();
	// Перед включением питания чипа и сигналом CE должно пройти время достаточное для начала работы осциллятора
	// Для типичных резонаторов с эквивалентной индуктивностью не более 30мГн достаточно 1.5 мс
	for (unsigned long j = 0; j < SystemCoreClock / 1000 * 1.5; ++j) {
		__NOP();
	}
	radio_begin();                           // Setup and configure rf radio
	setChannel(40);
	setPALevel(RF24_PA_MAX);
	setDataRate(RF24_2MBPS);
	setAutoAck(1);
	setAutoAck_pipe(1, 0);
	enableDynamicPayloads();
	setPayloadSize(32);
	radio_setRetries(5, 15); // Optionally, increase the delay between retries & # of retries
	setCRCLength(RF24_CRC_16);          // Use 8-bit CRC for performance
	for (unsigned long j = 0; j < 500000LL; ++j) {
		__NOP();
	}

	uRIP_flush();

	radio_openWritingPipe(0x00);
	radio_openReadingPipe(1, 0x00);
	radio_openReadingPipe(2, rx_addr);
	radio_flush_tx();
	radio_flush_rx();
	radio_startListening();

	xSPIsemaphore = xSemaphoreCreateMutex();

	xTaskCreate(vScanRF, "vScanRF", (uint16_t) 240, NULL, tskIDLE_PRIORITY + 1, (xTaskHandle *) NULL);
	xTaskCreate(vDiscovery,	"vDiscovery", configMINIMAL_STACK_SIZE+120, NULL, tskIDLE_PRIORITY + 1, (xTaskHandle *) NULL);
	xTaskCreate(vGarbageCollerctor, "vGarbageCollector", configMINIMAL_STACK_SIZE, NULL, tskIDLE_PRIORITY + 1, (xTaskHandle *) NULL);
	vTaskStartScheduler();
} //-V591