cmake_minimum_required(VERSION 3.21)
project(algorithms_vitalyr)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_C_FLAGS "-lfmt")
set(CMAKE_CXX_FLAGS "-lfmt")

add_library(algorithms_vitalyr SHARED library.cpp library.h)
add_executable(astar astar/astar.cpp)
add_executable(vec data_structure/vec/vec.cpp data_structure/vec/vec.h)
add_executable(lc141_has_cycle problems/leetcode/lc141_has_cycle.cpp)