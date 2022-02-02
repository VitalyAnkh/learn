cmake_minimum_required(VERSION 3.21)
project(glad C)

set(CMAKE_C_STANDARD 17)

include_directories(include)
include_directories(include/glad)
include_directories(include/KHR)

add_executable(main
        include/glad/glad.h
        include/KHR/khrplatform.h
        src/glad.c
        src/main.c
        )
set(CMAKE_C_FLAGS "-lglfw -lGL -lX11 -lpthread -lXrandr -lXi -ldl")
set(CMAKE_CXX_FLAGS "-lglfw -lGL -lX11 -lpthread -lXrandr -lXi -ldl")