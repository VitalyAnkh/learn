bt := '0'

export RUST_BACKTRACE := bt
export LLVM_INSTALL_DIR := "/home/vitalyr/sdk/lib/llvm"

log := "warn"

set shell := ["fish", "-c"]

export JUST_LOG := log

all: config_apue cuda_play cpp23_book

automate_boring_stuff:
   #!/usr/bin/env bash
   echo "==== automate boring stuff ===="
   export AUTOMATE_BORING_STUFF_PATH=$HOME/projects/dev/learn/Python/automate_boring_stuff
   cd $AUTOMATE_BORING_STUFF_PATH
   uv run main.py

cpp23_book:
   #!/usr/bin/env bash
   echo "==== cpp23 book ===="
   export BEGINNING_CPP23_PATH=$HOME/projects/dev/learn/C++/beginning_cpp23
   # clang++ is the locally built clang++ from llvm latest by default
   cd $BEGINNING_CPP23_PATH
   cmake -S . -B build -G "Ninja" \
    -DCMAKE_EXPORT_COMPILE_COMMANDS=ON \
    -DCMAKE_C_COMPILER=clang \
    -DCMAKE_CXX_COMPILER=clang++ \
    -DCMAKE_BUILD_TYPE=Debug \
    -DCMAKE_CXX_STANDARD=23 \
    -DCMAKE_CXX_LINK_FLAGS="-Wl,-rpath,$LD_LIBRARY_PATH"
   cmake --build build

config_apue:
  #!/usr/bin/env bash
  echo "==== config APUE ===="
  export LEARN_ROOT=$HOME/projects/dev/learn/Notebook/apue
  cd $LEARN_ROOT
  trash-put build
  cmake ./ -B build -G "Ninja" \
    -DCMAKE_EXPORT_COMPILE_COMMANDS=ON \
    -DCMAKE_BUILD_TYPE=Debug \
    -DCMAKE_CXX_STANDARD=23 \
    -DCMAKE_CXX_LINK_FLAGS="-Wl,-rpath,$LD_LIBRARY_PATH"
  cd build
  time ninja all -j$(nproc)
  echo "==== config APUE done ===="

cuda_play:
  #!/usr/bin/env bash
  echo "==== config CUDA play ===="
  pwd
  cd $HOME/projects/dev/learn/C++/cuda_play
  pwd
  trash-put build
  mkdir -p build
  cmake -B build -G "Ninja" \
    -DCMAKE_EXPORT_COMPILE_COMMANDS=ON \
    -DCMAKE_BUILD_TYPE=Debug \
    -DCMAKE_CXX_STANDARD=23 \
    -DCMAKE_CXX_LINK_FLAGS="-Wl,-rpath,$LD_LIBRARY_PATH"
  cd build
  time ninja all -j$(nproc)
  echo "==== config CUDA play done ===="
