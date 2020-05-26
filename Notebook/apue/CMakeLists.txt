cmake_minimum_required(VERSION 3.16)
project(apue C)

set(CMAKE_C_STANDARD 11)

add_executable(apue main.c)
add_executable(myls ch1/myls.c)
add_executable(mycopy ch1/mycopy.c)