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

ray_tracing:
   #!/usr/bin/env bash
   echo "==== ray tracing ===="
   export RAY_TRACING_PATH=$HOME/projects/dev/learn/C++/RayTracingInOneWeekend
   cd $RAY_TRACING_PATH
   meson setup build --reconfigure
   cd build
   meson compile

iree:
  #!/usr/bin/env bash
  echo "==== config iree ===="
  export IREE_SRC_PATH=$HOME/projects/dev/cpp/iree
  cd $IREE_SRC_PATH
  export IREE_HAL_DRIVER_CUDA=ON
  export IREE_HAL_DRIVER_HIP=ON
  export IREE_TARGET_BACKEND_CUDA=ON
  export IREE_TARGET_BACKEND_ROCM=ON
  export IREE_TARGET_BACKEND_WEBGPU_SPIRV=ON
  export CMAKE_BUILD_TYPE=RelWithDebInfo
  export IREE_ENABLE_ASSERTIONS=ON
  export IREE_ENABLE_LLD=OFF
  git checkout main
  git submodule update --init
  git pull --recurse-submodules
  rm build/CMakeCache.txt
  rm build/NATIVE/CMakeCache.txt
  # Recommended development options using clang and mold:
  # Use conda environment before this command!
  # conda activate py3.11
  # proxychains -q pip install -r runtime/bindings/python/iree/runtime/build_requirements.txt
  bash build_tools/cmake/build_all.sh
  # cmake -G Ninja -B build -S . \
  #   -DCMAKE_BUILD_TYPE=RelWithDebInfo \
  #   -DIREE_ENABLE_WERROR_FLAG=OFF \
  #   -DIREE_ENABLE_ASSERTIONS=ON \
  #   -DIREE_ENABLE_SPLIT_DWARF=ON \
  #   -DIREE_ENABLE_RUNTIME_TRACING=ON \
  #   -DIREE_ENABLE_THIN_ARCHIVES=ON \
  #   -DIREE_HAL_DRIVER_CUDA=ON \
  #   -DIREE_HAL_DRIVER_VULKAN=ON \
  #   -DIREE_TARGET_BACKEND_DEFAULTS=ON \
  #   -DIREE_TARGET_BACKEND_WEBGPU_SPIRV=ON \
  #   -DIREE_INPUT_STABLEHLO=ON \
  #   -DCMAKE_C_COMPILER=clang \
  #   -DCMAKE_CXX_COMPILER=clang++ \
  #   -DCMAKE_C_COMPILER_LAUNCHER=sccache \
  #   -DCMAKE_CXX_COMPILER_LAUNCHER=sccache \
  #   -DIREE_BUILD_PYTHON_BINDINGS=ON  \
  #   -DPython3_EXECUTABLE="$(which python)" \
  #   -DCMAKE_EXE_LINKER_FLAGS_INIT="-fuse-ld=mold" \
  #   -DCMAKE_MODULE_LINKER_FLAGS_INIT="-fuse-ld=mold" \
  #   -DCMAKE_SHARED_LINKER_FLAGS_INIT="-fuse-ld=mold"
  # cmake --build build
  cmake --build build --target iree-test-deps
  ctest -R build/tests/e2e/linalg/conv2d.mlir
  echo "==== config iree done ===="

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
