cmake_minimum_required(VERSION 3.21)
project(cuda_play CUDA)

set(CMAKE_CUDA_STANDARD 23)

add_executable(cuda_play main.cu)
add_executable(test_round test_round.cu)

set_target_properties(cuda_play PROPERTIES
        CUDA_SEPARABLE_COMPILATION ON)
