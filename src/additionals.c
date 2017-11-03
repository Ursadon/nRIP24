#include <stdint.h>
#include <time.h>
#include "additionals.h"
#include "NRP.h"

uint64_t convertPipeAddress(uint8_t address) {
    return BASEADDR + (uint64_t) address;
}

#ifdef _PRINTF_DEBUG_
char* c_printDate() {
    static char time_buffer[80];
    time_t rawtime;
    struct tm * timeinfo;
    time(&rawtime);
    timeinfo = localtime(&rawtime);
    strftime(time_buffer,
             sizeof(time_buffer),
             "[%Y-%m-%d %H:%M:%S] ",
             timeinfo);
    return time_buffer;
}
#endif
