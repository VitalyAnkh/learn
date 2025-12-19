cmake_minimum_required(VERSION 3.31 FATAL_ERROR)

set(CMAKE_CXX_STANDARD 26)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Enable experimental C++ modules support
# refer to https://github.com/Kitware/CMake/blob/master/Help/dev/experimental.rst#c-import-std-support for the exact UUID
set(CMAKE_EXPERIMENTAL_CXX_IMPORT_STD "d0edc3af-4c50-42ea-a356-e2862fe7a444")

set(CMAKE_CXX_EXTENSIONS ON)
set(CMAKE_EXPERIMENTAL_CXX_MODULE_CMAKE_API "TRUE")
set(CMAKE_EXPORT_COMPILE_COMMANDS 1)

project(
  beginning_cpp23
  VERSION 0.1
  LANGUAGES CXX)

add_executable(main main.cpp)
set_property(TARGET main PROPERTY CXX_MODULE_STD ON)

add_executable(hello src/hello.cpp)
set_property(TARGET hello PROPERTY CXX_MODULE_STD ON)

add_executable(larger src/ch10_function_templates/larger.cpp)
set_property(TARGET larger PROPERTY CXX_MODULE_STD ON)

add_executable(non_type_template_parameter src/ch10_function_templates/non_type_template_parameter.cpp)
set_property(TARGET non_type_template_parameter PROPERTY CXX_MODULE_STD ON)

add_library(math-module)
target_sources(math-module PUBLIC
        FILE_SET CXX_MODULES
        FILES ./src/ch11_module_and_namespace/math.cppm
)
set_property(TARGET math-module PROPERTY CXX_MODULE_STD ON)

add_executable(use_math src/ch11_module_and_namespace/use_math.cpp)
set_property(TARGET use_math PROPERTY CXX_MODULE_STD ON)
target_link_libraries(use_math PUBLIC math-module)
