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
#include "stm32f10x_usart.h"
#include "misc.h"
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
#include <stdlib.h>

#define UNUSED __attribute__ ((unused))
unsigned char data[] = { 0xAA, 0xBA, 0xCA, 0xFA };

SemaphoreHandle_t xSPIsemaphore;
SemaphoreHandle_t xUSARTsemaphore;
/*
 * A2 - CE
 * A1 - CSN
 */
struct AMessage
{
	uint64_t address;
	void* buf;
	uint8_t len;
	bool multicast;
} xMessage;

QueueHandle_t xQueue;
QueueHandle_t xUsartQueue;
bool radio_send(uint64_t address, void* buf, uint8_t len, bool multicast) {
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
//bool radio_send(uint64_t address, void* buf, uint8_t len, const bool multicast) {
//	struct AMessage pxMessage;
//	pxMessage.address = address;
//	pxMessage.buf = buf;
//	pxMessage.len = len;
//	pxMessage.multicast = multicast;
//	xQueueSend(xQueue, (void *) &pxMessage, (TickType_t) 0);
//	return 1;
//}
void UU_PutChar(uint8_t ch)
{
	while (!(USART1->SR & USART_SR_TXE))
		;
	USART1->DR = ch;  
}
void USARTSend(const char *pucBuffer)
{
	while (*pucBuffer != 0)
	{
		UU_PutChar(*pucBuffer);
		pucBuffer++;
	}
}

void usart_init(void)
{
    /* Enable USART1 and GPIOA clock */
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_USART1 | RCC_APB2Periph_GPIOA, ENABLE);

    /* NVIC Configuration */
	NVIC_InitTypeDef NVIC_InitStructure;
	/* Enable the USARTx Interrupt */
	NVIC_InitStructure.NVIC_IRQChannel = USART1_IRQn;
	NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 0;
	NVIC_InitStructure.NVIC_IRQChannelSubPriority = 0;
	NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
	NVIC_Init(&NVIC_InitStructure);

    /* Configure the GPIOs */
	GPIO_InitTypeDef GPIO_InitStructure;

    /* Configure USART1 Tx (PA.09) as alternate function push-pull */
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_9;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_Init(GPIOA, &GPIO_InitStructure);

    /* Configure USART1 Rx (PA.10) as input floating */
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_10;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN_FLOATING;
	GPIO_Init(GPIOA, &GPIO_InitStructure);

    /* Configure the USART1 */
	USART_InitTypeDef USART_InitStructure;

    /* USART1 configuration ------------------------------------------------------*/
    /* USART1 configured as follow:
        - BaudRate = 115200 baud
        - Word Length = 8 Bits
        - One Stop Bit
        - No parity
        - Hardware flow control disabled (RTS and CTS signals)
        - Receive and transmit enabled
        - USART Clock disabled
        - USART CPOL: Clock is active low
        - USART CPHA: Data is captured on the middle
        - USART LastBit: The clock pulse of the last data bit is not output to
            the SCLK pin
     */
	USART_InitStructure.USART_BaudRate = 115200;
	USART_InitStructure.USART_WordLength = USART_WordLength_8b;
	USART_InitStructure.USART_StopBits = USART_StopBits_1;
	USART_InitStructure.USART_Parity = USART_Parity_No;
	USART_InitStructure.USART_HardwareFlowControl = USART_HardwareFlowControl_None;
	USART_InitStructure.USART_Mode = USART_Mode_Rx | USART_Mode_Tx;

	USART_Init(USART1, &USART_InitStructure);

    /* Enable USART1 */
	USART_Cmd(USART1, ENABLE);

    /* Enable the USART1 Receive interrupt: this interrupt is generated when the
        USART1 receive data register is not empty */
	USART_ITConfig(USART1, USART_IT_RXNE, ENABLE);
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
volatile uint8_t rx_test_packet_count = 0;
uint8_t radio_is_interrupt() {
	if (!GPIO_ReadInputDataBit(GPIOB, GPIO_Pin_0)) {
		return 1;
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
		if (packet.data[0] == 0xAF) // send something
		{
			rx_test_packet_count++;

			NRP_packet packet_send;
			packet_send.version = 1;
			packet_send.type = ptData;
			packet_send.source = rx_addr;
			packet_send.destination = packet.source;
			packet_send.ttl = 0;
			packet_send._length = 1;
			packet_send.data[0] = 0xAD;
			rx_test_packet_count = 0;
			uint8_t route_id = uRIP_lookuphost(packet.source);

			NRP_send_packet(routingTable[route_id][NextHop], packet_send);
		}
		if (packet.data[0] == 9) // send something
		{
			NRP_packet packet_send;
			packet_send.version = 1;
			packet_send.type = ptData;
			packet_send.source = rx_addr;
			packet_send.destination = packet.source;
			packet_send.ttl = 0;
			packet_send._length = 1;
			packet_send.data[0] = rx_test_packet_count;
			rx_test_packet_count = 0;
			uint8_t route_id = uRIP_lookuphost(packet.source);

			NRP_send_packet(routingTable[route_id][NextHop], packet_send);
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
				while (radio_available())
				{
			    /* We were able to obtain the semaphore and can now access the
			     shared resource. */
					len = radio_getDynamicPayloadSize();
					radio_read(receivePayload, len);
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


void vUSART(void *pvParameters) {
	uint8_t pxRxedMessage;
	uint8_t cnt = 0, buf[32];
	while (1) {
		xQueueReceive(xUsartQueue, &(pxRxedMessage), portMAX_DELAY);
		buf[cnt] = pxRxedMessage;
		USART_SendData(USART1, pxRxedMessage);
		if (cnt++ >= 32) {
			cnt = 0;
		}
		if (pxRxedMessage == '\r')
		{
			buf[cnt++] = '\0';
			cnt = 0;
			if (buf[0] == 0x33) { // 3
				unsigned int rcount = 0;
				USARTSend("Host  |  Metric\t|  Nexthop   |  Timer \r");
				USARTSend("---------------------------------------\r");
				for (unsigned int i = 0; i < 256; i++) {
					if (routingTable[i][0] == 0xFF)
						break;
					char buf[30];
					sprintf(buf, "0x%02X  |    %u\t|    0x%02X    |    %u\r", routingTable[i][Host], routingTable[i][Metrics], routingTable[i][NextHop], routingTable[i][Timer]);
					USARTSend(buf);
					rcount++;
				}
				//cout << "Total: " << std::dec << rcount << endl;
			}
			else if (buf[0] == 0x35) { // 5
				uint8_t cmd, arg, route_id;
				sscanf(buf, "%u %X", &cmd, &arg);
			
				route_id = uRIP_lookuphost(arg);
				if (route_id != 0xff) {
					NRP_packet packet;
					packet.version = 1;
					packet.type = ptData;
					packet.source = rx_addr;
					packet.destination = arg;
					packet.ttl = 0;
					packet._length = 1;
					packet.data[0] = 0xAF;
					for (unsigned long p = 0; p < 255; ++p) {
						if (!NRP_send_packet(routingTable[route_id][NextHop], packet)) {
							cnt++;
						}
						else {
						}
					}
					USARTSend("Flood result: ");
					char itoa_buf[4];
					itoa(cnt, itoa_buf, 16);
					USARTSend(itoa_buf);
					USARTSend("/255 failed\r");
				}
				else {
					char buffer[50];
					sprintf(buffer, "%s-> [RX] [error] No route to host: 0x%02X %s\r", RED, (unsigned int)arg, RESET);
					USARTSend(buffer);
				}
			}
		}
	}
}
void vSendPackets(void *pvParameters) {
	struct AMessage pxRxedMessage;
	while (1) {
		xQueueReceive(xQueue, &(pxRxedMessage), portMAX_DELAY);
		    // pcRxedMessage now points to the struct AMessage variable posted
		    // by vATask.
		if (xSemaphoreTake(xSPIsemaphore, (TickType_t) 1000) == pdTRUE) {
			uint64_t address = pxRxedMessage.address;
			//uint8_t buf[28];
			uint8_t len = pxRxedMessage.len;
			bool multicast = pxRxedMessage.multicast;
			//radio_real_send(address, pxRxedMessage.buf, len, multicast);
			xSemaphoreGive(xSPIsemaphore);
		}
	}
}
void vApplicationStackOverflowHook(TaskHandle_t xTask, signed char *pcTaskName) {
	asm("bkpt");
}
uint8_t rx_addr;
int main(void) {
	GPIO_InitTypeDef GPIO_InitStructure;
	usart_init();
	rx_addr = (*(__IO uint8_t*) 0x1FFFF804); // Read from option byte #0
	if (rx_addr == 0xff)
	{
		while (1) // err!
			;
	}
	USARTSend("Hello.\r\nUSART1 is ready.\r\n");

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
	radio_maskIRQ(1, 1, 0);
	radio_flush_tx();
	radio_flush_rx();
	radio_startListening();

	xSPIsemaphore = xSemaphoreCreateMutex();
	xUSARTsemaphore = xSemaphoreCreateMutex();
	xSemaphoreTakeFromISR(xUSARTsemaphore, (BaseType_t *) pdFALSE);
	xQueue = xQueueCreate(10, sizeof(struct AMessage));
	xUsartQueue = xQueueCreate(32, sizeof(uint8_t));
	xTaskCreate(vUSART, "vUSART", configMINIMAL_STACK_SIZE, NULL, tskIDLE_PRIORITY + 1, (xTaskHandle *) NULL);
	xTaskCreate(vScanRF, "vScanRF", (uint16_t) 240, NULL, tskIDLE_PRIORITY + 1, (xTaskHandle *) NULL);
	xTaskCreate(vDiscovery, "vDiscovery", configMINIMAL_STACK_SIZE + 120, NULL, tskIDLE_PRIORITY + 1, (xTaskHandle *) NULL);
	xTaskCreate(vGarbageCollerctor, "vGarbageCollector", configMINIMAL_STACK_SIZE, NULL, tskIDLE_PRIORITY + 1, (xTaskHandle *) NULL);
	xTaskCreate(vSendPackets, "vSendPackets", configMINIMAL_STACK_SIZE, NULL, tskIDLE_PRIORITY + 1, (xTaskHandle *) NULL);

	NVIC_PriorityGroupConfig(NVIC_PriorityGroup_4);

	vTaskStartScheduler();
} //-V591

void USART1_IRQHandler(void)
{
	uint8_t cIn;
	if ((USART1->SR & USART_FLAG_RXNE) != 0)
	{
		cIn = USART_ReceiveData(USART1);
		xQueueSendFromISR(xUsartQueue, &cIn, (BaseType_t *)pdFALSE);
	}
}