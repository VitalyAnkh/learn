cmake_minimum_required(VERSION 3.20)
project(apue C)

set(CMAKE_CXX_COMPILER clang++)
set(CMAKE_C_COMPILER clang)

set(CMAKE_C_STANDARD 23)

add_executable(myls ch1/myls.c)
add_executable(mycopy ch1/mycopy.c)
add_executable(mycopy2 ch1/mycopy2.c)
add_executable(use_getpid ch1/use_getpid.c)
add_executable(prototype_shell ch1/prototype_shell.c)
add_executable(use_memset ch1/use_memset.c)
add_executable(test_static ch1/test_static_and_non_static_variable.c)

add_executable(open ch3/open.c)
