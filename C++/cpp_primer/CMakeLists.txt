cmake_minimum_required(VERSION 3.16)
project(cpp_primer)

set(CMAKE_CXX_STANDARD 14)

include_directories(SalesItem)

add_executable(cpp_primer
        SalesItem/addItems.cpp
        SalesItem/SalesItem.h)
