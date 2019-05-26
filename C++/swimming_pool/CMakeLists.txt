cmake_minimum_required(VERSION 3.14)
project(swimming_pool)

set(CMAKE_CXX_STANDARD 17)

add_executable(swimming_pool main.cpp alley.h alley.cpp swimming_pool.cpp swimming_pool.h capp.cpp capp.h)