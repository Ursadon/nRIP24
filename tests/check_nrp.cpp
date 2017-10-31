#include <stdint.h>
#include "CppUTest/TestHarness.h"
#include "additionals.h"
#include "RIP.h"

TEST_GROUP(RIP_checks){

};
 
TEST(RIP_checks, FirstExample)
{
  uint64_t x = convertPipeAddress(0xff);
  CHECK_EQUAL(0xA0A1F0F1FFLL, x);
}