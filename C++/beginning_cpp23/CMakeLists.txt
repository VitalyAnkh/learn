cmake_minimum_required(VERSION 3.25 FATAL_ERROR)
project(
  beginning_cpp23
  VERSION 0.1
  LANGUAGES CXX)

# set the c++ standard to 20 set(CMAKE_CXX_COMPILER "g++")
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)
set(CMAKE_EXPERIMENTAL_CXX_MODULE_CMAKE_API "TRUE")
# add_compile_options(-fmodules-ts)
set(CMAKE_EXPORT_COMPILE_COMMANDS 1)

# compile a list of system modules
function(compile_system_header SYSTEM_FILE)
  if(CMAKE_CXX_COMPILER_ID MATCHES "Clang")
    execute_process(
      COMMAND clang++ -std=c++20 -xc++-system-header --precompile ${SYSTEM_FILE}
      WORKING_DIRECTORY ${CMAKE_BINARY_DIR})
  else()
    execute_process(
      COMMAND g++ -fmodules-ts -std=c++20 -c -x c++-system-header ${SYSTEM_FILE}
      WORKING_DIRECTORY ${CMAKE_BINARY_DIR})
  endif()
endfunction()

function(add_executable_with_pch target file_name)
  add_executable(${target} ${file_name})
  if(CMAKE_CXX_COMPILER_ID MATCHES "Clang")
    target_compile_options(
      ${target} PRIVATE -fmodule-file=${CMAKE_BINARY_DIR}/iostream.pcm
                        -fmodule-file=${CMAKE_BINARY_DIR}/limits.pcm)
  else()
    target_include_directories(${target}
                               PRIVATE ${CMAKE_CURRENT_BINARY_DIR}/std)
    target_compile_options(${target} PRIVATE -fmodules-ts)
  endif()
endfunction()

compile_system_header(iostream)
compile_system_header(limits)

add_executable_with_pch(main main.cpp)
add_executable_with_pch(hello src/hello.cpp)
# set(CMAKE_BUILD_TYPE Debug)
