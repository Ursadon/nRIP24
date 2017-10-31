#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "CppUTest/TestHarness.h"
#include "additionals.h"
#include "RIP.h"
#include "NRP.h"

void CMD_parser(NRP_packet packet)
{
    return;
};

unsigned int routes_send_count = 0;
bool radio_send(uint64_t address, const void *buf, uint8_t len, const bool multicast)
{
    if(address == 0x01){
        // routeSend test
        routes_send_count += ((len-4)/2);
    }
    return 0;
}

TEST_GROUP(NRP_checks){

};

TEST(NRP_checks, routeFlush)
{
    // Generate random routing table
    unsigned int arr[256][4];
    for (int i = 0; i < 256; i++)
    {
        for (int j = 0; j < 4; j++)
        {
            arr[i][j] = rand() % 255 + 1;
            ;
        }
    }
    // Flush it
    uRIP_flush();

    // Testing array
    arr[0][Host] = rx_addr;
    arr[0][Metrics] = 0;
    arr[0][NextHop] = rx_addr;
    arr[0][Timer] = 0;
    for (int i = 1; i < 256; i++)
    {
        for (int j = 0; j < 4; j++)
        {
            arr[i][j] = 0xff;
        }
    }

    CHECK_EQUAL(0, memcmp(arr, routingTable, sizeof(arr)));
}

TEST(NRP_checks, routeLookupHost)
{
    uRIP_flush();
    CHECK_EQUAL(0, uRIP_lookuphost(rx_addr));
}

TEST(NRP_checks, routeSort)
{
    // Generate random routing table
    for (int i = 0; i < 256; i++)
    {
        for (int j = 0; j < 4; j++)
        {
            routingTable[i][j] = rand() % 255 + 1;
        }
    }
    // Sorting
    uRIP_sortDatabase();

    for (int i = 1; i < 256; i++)
    {
        char buffer[20];
        if (routingTable[i][Metrics] < routingTable[i - 1][Metrics])
        {
            sprintf(buffer, "fail at %i (%i > %i)", i, routingTable[i][Metrics], routingTable[i - 1][Metrics]);
            FAIL(buffer);
        }
    }
}


TEST(NRP_checks, routeSend)
{
    // Generate random routing table
    for (int i = 0; i < 256; i++)
    {
        for (int j = 0; j < 4; j++)
        {
            routingTable[i][j] = rand() % 255 + 1;
        }
    }
    for (int i = 1; i < 255; i++) {
        routes_send_count = 0;
        routingTableCount = i;
        for (int j = 0; j < i; j++){
            routingTable[j][Host] = rand() % 255 + 1;
            routingTable[j][Metrics] = rand() % 255 + 1;
            routingTable[j][NextHop] = rand() % 255 + 1;
            routingTable[j][Timer] = rand() % 255 + 1;
        }
        uRIP_sendRoutes(0x01);
        CHECK_EQUAL(i, routes_send_count);
    }
}
void RandomizeRoutes(){
    for (int j = 0; j < 256; j++){
        routingTable[j][Host] = rand() % 255 + 1;
        routingTable[j][Metrics] = rand() % 255 + 1;
        routingTable[j][NextHop] = rand() % 255 + 1;
        routingTable[j][Timer] = rand() % 255 + 1;
    }
}
TEST(NRP_checks, routeUpdate_invalid)
{
    uRIP_flush();
    for (int j = 0; j < 256; j++){
        CHECK_EQUAL(2,uRIP_updateRecord(0xAA,17,j));
    }
    uRIP_flush();
    for (int j = 0; j < 256; j++){
        CHECK_EQUAL(2,uRIP_updateRecord(rx_addr,rand() % 255 + 1,j));
    }
    uRIP_flush();
    for (int j = 0; j < 256; j++){
        CHECK_EQUAL(2,uRIP_updateRecord(0x00,rand() % 255 + 1,j));
    }
    uRIP_flush();
    for (int j = 0; j < 256; j++){
        CHECK_EQUAL(2,uRIP_updateRecord(0xff,rand() % 255 + 1,rand() % 255 + 1));
    }
}