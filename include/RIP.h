/*
 * File:   RIP.h
 * Author: NikolayL
 *
 * Created on October 9, 2017, 12:58 AM
 */
#ifndef RIP_H
#define RIP_H

#include <stdint.h>
#include <stdbool.h>

#ifdef __cplusplus
extern "C" {
#endif

#define ROUTE_GARBAGE_TIMER 6
#define ROUTE_TIMEOUT_TIMER 4

extern unsigned int routingTableCount;
extern unsigned int routingTable[256][4];

uint8_t uRIP_lookuphost(uint8_t host);
void uRIP_flush();
uint8_t uRIP_updateRecord(uint8_t route, uint8_t metrics, uint8_t nexthop);
void uRIP_sendRoutes(uint8_t host);
bool uRIP_deleteRoute(uint8_t route);
void uRIP_garbageCollector();
void uRIP_sortDatabase();

#ifdef __cplusplus
}
#endif

#endif /* RIP_H */
