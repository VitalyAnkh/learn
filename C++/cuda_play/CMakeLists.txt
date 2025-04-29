cmake_minimum_required(VERSION 3.30)
project(cuda_play LANGUAGES C CXX CUDA)

# setting clang causing error like this: FAILED: regex : && clang++ -g
# -Wl,-rpath,  CMakeFiles/regex.dir/src/regex.cpp.o -o regex   && : /usr/bin/ld:
# /usr/lib64/gcc/x86_64-pc-linux-gnu/14.1.1/../../../../lib64/Scrt1.o: in
# function `_start': (.text+0x1b): undefined reference to `main' clang++: error:
# linker command failed with exit code 1 (use -v to see invocation) ninja: build
# stopped: subcommand failed
#
# Why?
#
# clang doesn't support modules: [1/44] Scanning
# /home/vitalyr/projects/dev/cpp/cuda_play/src/regex.cpp for CXX dependencies
# FAILED: CMakeFiles/regex.dir/src/regex.cpp.o.ddi clang++   -g -std=gnu++23 -E
# -x c++ /home/vitalyr/projects/dev/cpp/cuda_play/src/regex.cpp -MT
# CMakeFiles/regex.dir/src/regex.cpp.o.ddi -MD -MF
# CMakeFiles/regex.dir/src/regex.cpp.o.ddi.d -fmodules-ts
# -fdeps-file=CMakeFiles/regex.dir/src/regex.cpp.o.ddi
# -fdeps-target=CMakeFiles/regex.dir/src/regex.cpp.o -fdeps-format=p1689r5 -o
# CMakeFiles/regex.dir/src/regex.cpp.o.ddi.i clang++: error: unknown argument:
# '-fmodules-ts' clang++: error: unknown argument:
# '-fdeps-file=CMakeFiles/regex.dir/src/regex.cpp.o.ddi' clang++: error: unknown
# argument: '-fdeps-target=CMakeFiles/regex.dir/src/regex.cpp.o' clang++: error:
# unknown argument: '-fdeps-format=p1689r5'
#
# set(CMAKE_CXX_COMPILER clang++)
set(CMAKE_C_COMPILER clang)

set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_STANDARD_REQUIRED True)

set(CMAKE_CUDA_STANDARD 14)

# toggle between building a shared or static library
option(BUILD_SHARED_LIBS "Build as shared library" OFF)

# always export compile commands database
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

# default build type is Release
if(CMAKE_BUILD_TYPE STREQUAL "")
  set(CMAKE_BUILD_TYPE Release)
endif()

add_executable(test_round test_round.cu)

add_executable(add_sync src/add_sync.cu)
set_property(TARGET add_sync PROPERTY CUDA_ARCHITECTURES 80)

add_executable(test_approx test_approx.cu)

add_executable(cuda_play main.cu)
set_target_properties(cuda_play PROPERTIES CUDA_SEPARABLE_COMPILATION ON)

add_executable(threads_play src/threads_play.cu)
set_target_properties(threads_play PROPERTIES CUDA_SEPARABLE_COMPILATION ON)

add_executable(regex src/regex.cpp)

add_executable(vec_add src/vec_add.cu)
set_target_properties(vec_add PROPERTIES CUDA_SEPARABLE_COMPILATION ON)

add_executable(vec_add_host src/vec_add_host.cpp)
# set_target_properties(vec_add PROPERTIES CUDA_SEPARABLE_COMPILATION ON)

add_executable(tiny_ecs src/tiny_ecs.cpp)
find_package(fmt)
target_link_libraries(tiny_ecs fmt::fmt)

add_executable(tiny_ray_tracer src/tiny_ray_tracer.cpp)

add_executable(small_ecs src/small_ecs.cpp)
find_package(fmt)
target_link_libraries(small_ecs fmt::fmt)

add_executable(host_register src/use_host_register.cu)
set_target_properties(host_register PROPERTIES CUDA_SEPARABLE_COMPILATION ON)

add_executable(good_host_register src/good_host_register.cu)
set_target_properties(good_host_register PROPERTIES CUDA_SEPARABLE_COMPILATION
                                                    ON)

add_executable(only_host_register src/only_host_register.cu)
set_target_properties(only_host_register PROPERTIES CUDA_SEPARABLE_COMPILATION
                                                    ON)

add_executable(simple_host_register src/simple_host_register.cu)

add_executable(cuda_fp8_cvt src/cuda_fp8_cvt.cu)

add_executable(cuda_printf src/cuda_printf.cu)
