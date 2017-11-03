/*
 * main.h
 *
 *  Created on: 25 окт. 2017 г.
 *      Author: NikolayL
 */
#include <stdbool.h>

#ifndef MAIN_H_
#define MAIN_H_

bool radio_send(uint64_t address, const void* buf, uint8_t len, const bool multicast);


#endif /* MAIN_H_ */
