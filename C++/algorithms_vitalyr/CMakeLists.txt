cmake_minimum_required(VERSION 3.14)
project(algorithms_vitalyr)

set(CMAKE_CXX_STANDARD 17)

add_library(algorithms_vitalyr SHARED library.cpp library.h)
add_executable(astar astar/astar.cpp)