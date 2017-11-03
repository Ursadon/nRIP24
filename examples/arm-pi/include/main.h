/*
 * main.h
 *
 *  Created on: Oct 24, 2017
 *      Author: nikolay
 */
#include <stdint.h>
#include <stdbool.h>
#ifndef MAIN_H_
#define MAIN_H_

#ifdef __cplusplus
extern "C" {
#endif

void CMD_parser(NRP_packet packet);
bool radio_send(uint64_t address, const void* buf, uint8_t len, const bool multicast);
void NRP_dump_packet(NRP_packet packet);

#ifdef __cplusplus
}
#endif

#endif /* MAIN_H_ */
