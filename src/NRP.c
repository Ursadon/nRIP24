#include <time.h>
#include <stdio.h>
#include <stdlib.h>

#include <stdint.h>
#include <stdbool.h>
#include <inttypes.h>

#include "NRP.h"
#include "RIP.h"
#include "additionals.h"
#include "main.h"

bool NRP_send_packet(uint8_t host, NRP_packet packet) {
    uint8_t header = (packet.version << 4) + packet.type;
    uint8_t buf[32] = { header, packet.destination, packet.source, packet.ttl };

    for (int i = 0; i < (uint8_t) packet._length; i++) {
        buf[i + 4] = packet.data[i];
    }
    if (host == 0x00) { // is multicast?
        return radio_send(host, buf, 4 + packet._length, 1);
    }
    else {
//	    __DEBUG(printf("%s%s%s-> [TX] [info] sending to 0x%02X type = %u %s\n",
//		    CYAN,
//		    c_printDate(),
//		    WHITE,
//		    (unsigned int)host,
//		    (unsigned int)packet.type,
//		    RESET) ;);
        return radio_send(host, buf, 4 + packet._length, 0);
    }
}

void NRP_parsePacket(NRP_packet packet) {
    if (packet.ttl == 254) {
        __DEBUG(printf("%s%s%s-> [RX] [warning] Packet dropped - ttl exceeded %s\n", CYAN, c_printDate(), RED, RESET) ;);
        return;
    }
	if ((packet.type == uRIP_discovery) & (packet.source != 0x00)) { // uRIP update
	    //__DEBUG(printf("%s%s%s-> [RX] [info] uRIP discovery from: 0x%02X%s\n", CYAN, c_printDate(), WHITE, (unsigned int)packet.source, RESET););
		//TODO: add random delay
		for (unsigned long long i = 0; i < 72000; i++)
		{
			__asm("nop");
		}
		uRIP_sendRoutes(packet.source);
		return;
	}
    if (packet.type == uRIP_update) { // uRIP update
//		if (((packet.source == 0xa7) | (packet.source == 0x17))
//		        & ((rx_addr == 0xa7) | (rx_addr == 0x17))) {
//			return;
//		}
        //__DEBUG(printf("%s%s%s-> [RX] [info] uRIP request for my routes %s\n", CYAN, c_printDate(), WHITE, RESET););
        if (packet._length % 2 == 0)
        {
            for (int i = 0; i < packet._length / 2; i++)
            {
                uRIP_updateRecord(packet.data[i * 2 + 0], packet.data[i * 2 + 1], packet.source);
            }
            return;
        }
        else
        {
            __DEBUG(printf("%s%s%s-> [RX] [err] Incorrect uRIP packet length %s\n", CYAN, c_printDate(), RED, RESET) ;);
        }
    }
    if (packet.destination != rx_addr) { // transit packet
        __DEBUG(printf("%s%s%s-> [RX] (TRANSIT) to: 0x%02X%s\n", CYAN, c_printDate(), BLUE, (unsigned int)packet.destination, RESET) ;);
        packet.ttl++;
        uint8_t host_id = uRIP_lookuphost(packet.destination);
        if (uRIP_lookuphost(packet.destination) != 0xff) {
            NRP_send_packet(routingTable[host_id][NextHop], packet);
        }
        else {
            __DEBUG(printf("%s%s%s-> [RX] [error] No route to host: 0x%02X %s\n", CYAN, c_printDate(), RED, (unsigned int)packet.destination, RESET) ;);
        }
    }
    else {
        __DEBUG(printf("%s%s%s-> [RX] (TO_ME) %s\n", CYAN, c_printDate(), BLUE, RESET) ; NRP_dump_packet(packet) ;);
        CMD_parser(packet);
    }
}
