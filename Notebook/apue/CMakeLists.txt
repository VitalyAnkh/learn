cmake_minimum_required(VERSION 3.16)
project(apue C)

set(CMAKE_C_STANDARD 11)

add_executable(myls ch1/myls.c)
add_executable(mycopy ch1/mycopy.c)
add_executable(mycopy2 ch1/mycopy2.c)
add_executable(use_getpid ch1/use_getpid.c)
add_executable(prototype_shell ch1/prototype_shell.c)
