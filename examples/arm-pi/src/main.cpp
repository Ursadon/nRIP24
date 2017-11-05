/*
 *
 *  Filename : rpi-hub.cpp
 *
 *  This program makes the RPi as a hub listening to all six pipes from the remote sensor nodes ( usually Arduino )
 *  and will return the packet back to the sensor on pipe0 so that the sender can calculate the round trip delays
 *  when the payload matches.
 *
 *  I encounter that at times, it also receive from pipe7 ( or pipe0 ) with content of FFFFFFFFF that I will not sent
 *  back to the sender
 *
 *  Refer to RF24/examples/rpi_hub_arduino/ for the corresponding Arduino sketches to work with this code.
 *
 *
 *  CE is not used and CSN is GPIO25 (not pinout)
 *
 *  Refer to RPi docs for GPIO numbers
 *
 *  Author : Stanley Seow
 *  e-mail : stanleyseow@gmail.com
 *  date   : 6th Mar 2013
 *
 * 03/17/2013 : Charles-Henri Hallard (http://hallard.me)
 *              Modified to use with Arduipi board http://hallard.me/arduipi
 *                                                Changed to use modified bcm2835 and RF24 library
 *
 *
 */

#include <additionals.h>
#include <cstdlib>
#include <iostream>
#include <iomanip>
#include <cstdint>
#include <RF24/RF24.h>
#include <boost/thread.hpp>
#include <boost/algorithm/string.hpp>
#include "NRP.h"
#include "RIP.h"
#include "additionals.h"
#include "main.h"

using namespace std;

#ifdef _RPI_
RF24 radio(RPI_V2_GPIO_P1_22, RPI_V2_GPIO_P1_18, BCM2835_SPI_SPEED_1MHZ);
//RF24 radio(25, 24, 256);
#else
RF24 radio(7, 0);
#endif

boost::thread thread_RX;
boost::thread thread_Read;
boost::thread thread_Routing;
boost::mutex nrf_;

bool radio_send(uint64_t address, const void* buf, uint8_t len, const bool multicast) {
	bool rval;
	radio.openWritingPipe(BASEADDR + address);
	radio.stopListening();
	rval = radio.write(buf, len, multicast);
	radio.startListening();
	return rval;
}

#ifdef _PRINTF_DEBUG_
string printDate() {
	char time_buffer[80];
	time_t rawtime;
	struct tm * timeinfo;
	time(&rawtime);
	timeinfo = localtime(&rawtime);
	strftime(time_buffer, sizeof(time_buffer), "[%Y-%m-%d %H:%M:%S] ",
			timeinfo);
	std::string str(time_buffer);
	return str;
}

void NRP_dump_packet(NRP_packet packet) {
	cout << "=========== NRP PACKET ===========" << endl;
	cout << "\tVersion: " << (unsigned int) packet.version << endl;
	cout << "\tType: " << (unsigned int) packet.type << endl;
	cout << "\tSource: 0x" << std::hex << std::noshowbase << std::setw(2)
			<< std::setfill('0') << std::uppercase
			<< (unsigned int) packet.source << endl;
	cout << "\tDestination: 0x" << std::hex << std::noshowbase << std::setw(2)
			<< std::setfill('0') << std::uppercase
			<< (unsigned int) packet.destination << endl;
	cout << "\tTTL: " << (unsigned int) packet.ttl << endl;
	cout << "\tLength: " << (unsigned int) packet._length << endl;
	cout << "\tRaw data:" << endl;
	for (int i = 0; i < packet._length; i++) {
		printf("0x%X ", packet.data[i]);
	}
	cout << endl << "=================================" << endl;
}
#endif


void jobRX() {
	uint8_t receivePayload[32];
	uint8_t pipe = 1;
	NRP_packet packet;
	uint8_t len;
	std::cout << GREEN << __func__ << " thread stared" << RESET << endl;
	while (1) {
		// Start listening
		nrf_.lock();
		radio.startListening();

		while (radio.available(&pipe)) {
			len = radio.getDynamicPayloadSize();
			radio.read(receivePayload, len);

			// Display it on screen
			if ((receivePayload[0] >> 4) == 1 && len >= 5) { // Protocol packet! Header rcvd
				packet = {};
				packet.version = receivePayload[0] >> 4;
				packet.type = receivePayload[0] & 0x0F;
				packet.destination = receivePayload[1];
				packet.source = receivePayload[2];
				packet.ttl = receivePayload[3];
				packet._length = len - 4;
				if ((uint8_t)packet._length > 0) {
					for (int i = 0; i < packet._length; i++) {
						packet.data[i] = receivePayload[4 + i];
					};
				}
				NRP_parsePacket(packet);
			} else {
				cout << CYAN << printDate() << RESET << "-> Recv: size=" << len + 0 << " payload=" << receivePayload + 0 << " pipe=" << pipe << endl;
				for (int i = 0; i < len; i++) {

					printf("0x%X ", receivePayload[i]);
				}
				cout << endl;
			}

			radio.stopListening();
		}
		nrf_.unlock();
		delayMicroseconds(20);
	}
}

void jobRouting() {
	std::cout << GREEN << __func__ << " thread stared" << RESET << endl;
	while (1) {

		nrf_.lock();
		//cout << WHITE << CYAN << printDate() << RESET << "<- [TX] Sending uRIP routes (count = " << (unsigned int) routingTableCount << ")" << RESET << endl;
		//uRIP_sendRoutes(0x00);
		uRIP_sendDiscoveryReq();
		uRIP_garbageCollector();
		nrf_.unlock();
		boost::this_thread::sleep_for(boost::chrono::seconds(2));
	}
}
void CMD_parser(NRP_packet packet) {

}
void jobReadTerminal() {
	uint8_t argc = 0;
	uint8_t j = 0;

	std::string arg;
	std::cout << GREEN << __func__ << " thread stared" << RESET << endl;
	std::cout << "Ready" << endl << "2. send <addr> <byte>" << endl
			<< "3. route - show routes" << endl;

	while (1) {
		std::cout << "> ";
		std::getline(std::cin, arg);

		std::vector<std::string> tokens;
		boost::split(tokens, arg, boost::is_any_of(" "));

		argc = tokens.size();
		if (argc > 0) {
			nrf_.lock();
			if (tokens.at(0) == "route" || tokens.at(0) == "3") {
				unsigned int rcount = 0;
				cout << "Host  |  Metric  |  Nexthop  | Timer " << endl
						<< "------------------------------------" << endl;
				for (unsigned int i = 0; i < 256; i++) {
					if (routingTable[i][0] == 0xFF)
						break;
					cout << "0x" << std::hex << std::noshowbase << std::setw(2)
							<< std::setfill('0') << std::uppercase
							<< routingTable[i][Host] << "  |   ";
					cout << std::dec << std::noshowbase << std::setw(3)
							<< std::setfill('0') << std::uppercase
							<< routingTable[i][Metrics] << "    |    ";
					cout << std::hex << std::noshowbase << std::setw(2)
							<< std::setfill('0') << std::uppercase
							<< routingTable[i][NextHop] << "    |    ";
					cout << std::hex << std::noshowbase << std::setw(2)
							<< std::setfill('0') << std::uppercase
							<< routingTable[i][Timer] << endl;
					rcount++;
				}
				cout << "Total: " << std::dec << rcount << endl;
			}
		}
		if ((tokens.at(0) == "send" || tokens.at(0) == "2") & (argc == 3)) {
			uint8_t route_id, byte;

			j = std::stoi(tokens.at(1), NULL, 16);
			byte = std::stoi(tokens.at(2), NULL, 16);

			route_id = uRIP_lookuphost(j);
			if (route_id != 0xff) {
				NRP_packet packet;
				packet.version = 1;
				packet.type = ptData;
				packet.source = rx_addr;
				packet.destination = j;
				packet.ttl = 0;
				packet._length = 1;
				packet.data[0] = byte;

				if (!NRP_send_packet(routingTable[route_id][NextHop], packet)) {
					cout << "Send Fail" << endl;
				} else {
					cout << "Send OK" << endl;
				}
			} else {
				__DEBUG(printf("%s%s%s-> [RX] [error] No route to host: 0x%02X %s\n", CYAN, c_printDate(), RED, (unsigned int)j, RESET) ;);
			}
		}
		if ((tokens.at(0) == "sendroute" || tokens.at(0) == "4") & (argc == 4)) {
			uint8_t route_id, dst;
			uint8_t data[28];
			dst = std::stoi(tokens.at(1), NULL, 16);
			data[0] = std::stoi(tokens.at(2), NULL, 16);
			data[1] = std::stoi(tokens.at(3), NULL, 16);
			route_id = uRIP_lookuphost(dst);

			if (route_id != 0xff) {

				NRP_packet packet;
				memcpy ( &packet.data, &data, sizeof(data) );
				packet.version = 1;
				packet.type = uRIP_update;
				packet.source = rx_addr;
				packet.destination = dst;
				packet.ttl = 0;
				packet._length = 2;
				//packet.data =;

				if (!NRP_send_packet(routingTable[route_id][Host], packet)) {
					cout << "Send Fail" << endl;
				} else {
					cout << "Send OK" << endl;
				}
			} else {
				__DEBUG(printf("%s%s%s-> [RX] [error] No route to host: 0x%02X %s\n", CYAN, c_printDate(), RED, (unsigned int)j, RESET) ;);
			}
		}
		nrf_.unlock();
	}
}

int main(int argc, char** argv) {
	// Refer to RF24.h or nRF24L01 DS for settings

	radio.begin();
	radio.enableDynamicPayloads();
	radio.setPayloadSize(32);
	radio.setAutoAck(1);
	radio.setAutoAck(1, 0);
	radio.setRetries(0, 2);
	radio.setDataRate(RF24_2MBPS);
	radio.setPALevel(RF24_PA_MAX);
	radio.setChannel(40);
	radio.setCRCLength(RF24_CRC_16);

	// Open 6 pipes for readings ( 5 plus pipe0, also can be used for reading )
	radio.openWritingPipe(0xa0a1f0f100);
	radio.openReadingPipe(1, BASEADDR);
	radio.openReadingPipe(2, convertPipeAddress(rx_addr));
	//
	// Start listening
	//
	radio.startListening();

	//
	// Dump the configuration of the rf unit for debugging
	//
	radio.printDetails();

	delay(1);
	//scanAir();
	cout << endl;

	uRIP_flush();

	thread_RX = boost::thread(jobRX);
	thread_Routing = boost::thread(jobRouting);
	thread_Read = boost::thread(jobReadTerminal);

	// do other stuff
	thread_RX.join();
	thread_Routing.join();
	thread_Read.join();
	return 0;
}
