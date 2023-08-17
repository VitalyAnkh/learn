bt := '0'

export RUST_BACKTRACE := bt
export LLVM_INSTALL_DIR := "/home/vitalyr/sdk/lib/llvm"

log := "warn"

set shell := ["fish", "-c"]

export JUST_LOG := log

config_apue:
  #!/usr/bin/env bash
  echo "==== config APUE ===="
  cd $HOME/projects/learn/Notebook/apue
  trash-put build
  cmake ./ -B build -G "Ninja" \
    -DCMAKE_EXPORT_COMPILE_COMMANDS=ON \
    -DCMAKE_BUILD_TYPE=Debug \
    -DCMAKE_CXX_STANDARD=23 \
    -DCMAKE_CXX_LINK_FLAGS="-Wl,-rpath,$LD_LIBRARY_PATH"
  cd build
  ninja -j10
  echo "==== config APUE done ===="
