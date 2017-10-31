cmake_minimum_required(VERSION 2.8.12)

project (nRIP24)
set(CMAKE_BUILD_TYPE Release)

set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -O1 -std=c11")
set(CMAKE_BINARY_DIR build)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/include)
add_library(nRIP24 SHARED
    src/additionals.c
    src/NRP.c
    src/RIP.c
)

include(GNUInstallDirs)
install(TARGETS nRIP24
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    PUBLIC_HEADER DESTINATION ${CMAKE_INSTALL_INCLUDEDIR})
option(COMPILE_TESTS "Compile the tests" OFF)
if(COMPILE_TESTS)
  add_subdirectory(tests)
endif(COMPILE_TESTS)
