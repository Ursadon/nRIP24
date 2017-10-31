cmake_minimum_required(VERSION 2.8)

project (nRIP24)
set(CMAKE_BUILD_TYPE Release)

include_directories(${CMAKE_CURRENT_SOURCE_DIR}/include)
add_library(nRIP24 SHARED
    src/additionals.c
    src/NRP.c
    src/RIP.c
)
