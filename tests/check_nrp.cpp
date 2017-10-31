#include <stdint.h>
#include "CppUTest/TestHarness.h"
#include "additionals.h"
#include "NRP.h"

void CMD_parser(NRP_packet packet){
    return;
};
bool radio_send(uint64_t address, const void* buf, uint8_t len, const bool multicast){
    return 0;
}

TEST_GROUP(AwesomeExamples){

};
 
TEST(AwesomeExamples, FirstExample)
{
  uint64_t x = convertPipeAddress(0xff);
  CHECK_EQUAL(0xA0A1F0F1FFLL, x);
}