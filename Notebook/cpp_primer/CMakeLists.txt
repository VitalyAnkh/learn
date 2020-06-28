cmake_minimum_required(VERSION 3.16)
project(cpp_primer)

set(CMAKE_CXX_STANDARD 14)

include_directories(.)
include_directories(ch2)

add_executable(signed_and_unsigned
        ch2/signed_and_unsigned.cpp)
