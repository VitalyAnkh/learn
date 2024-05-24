# CMake 3.30 is required for C++23 `import std` support; we use 3.29.20240416
# here so that in-development versions satisfy it.
cmake_minimum_required(VERSION 3.29.20240416 FATAL_ERROR)

# Set experimental flag to enable `import std` support from CMake. This must be
# enabled before C++ language support.
set(CMAKE_EXPERIMENTAL_CXX_IMPORT_STD
    # This specific value changes as experimental support evolves. See
    # `Help/dev/experimental.rst` in the CMake source corresponding to
    # your CMake build for the exact value to use.
    "0e5b6991-d74f-4b3d-a41c-cf096e0b2508")

project(std_module_example LANGUAGES CXX)

# Turning off extensions avoids an issue with the clang 16 compiler clang 17 and
# greater can avoid this setting set(CMAKE_CXX_EXTENSIONS OFF) Set the version
# of C++ for the project
set(CMAKE_CXX_STANDARD 23)

# Tell CMake that we explicitly want `import std`. This will initialize the
# property on all targets declared after this to 1
set(CMAKE_CXX_MODULE_STD 1)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -stdlib=libc++ -v")
set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -stdlib=libc++ -lc++abi")

# Make a library.
add_library(use_std STATIC)
# Add sources.
target_sources(use_std PRIVATE use_std.cxx)
# Tell CMake we're using C++23 but only C++20 is needed to consume it.
target_compile_features(
  use_std
  PRIVATE cxx_std_23
  INTERFACE cxx_std_23)

# Create a library
add_library(foo)
# Add the module file to the library
target_sources(foo PUBLIC FILE_SET CXX_MODULES FILES foo.cxx)

# Create an executable
add_executable(hello main.cxx)
# Link to the library foo and use_std
target_link_libraries(hello foo use_std)
