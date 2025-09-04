{
  description = "Example C++ development environment for Zero to Nix";

  # Flake inputs
  inputs = {
    # Latest stable Nixpkgs
    # nixpkgs.url = "https://flakehub.com/f/NixOS/nixpkgs/0";
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    # flake-utils.url = "github:numtide/flake-utils";
  };

  # Flake outputs
  outputs =
    {
      self,
      nixpkgs,
    }:
    let
      # Systems supported
      allSystems = [
        "x86_64-linux" # 64-bit Intel/AMD Linux
        "aarch64-linux" # 64-bit ARM Linux
        "x86_64-darwin" # 64-bit Intel macOS
        "aarch64-darwin" # 64-bit ARM macOS
      ];
      # Helper to provide system-specific attributes
      forAllSystems =
        f:
        nixpkgs.lib.genAttrs allSystems (
          system:
          f {
            pkgs = import nixpkgs {
              inherit system;
              config.allowUnfree = true;
              config.cudaSupport = true;
              config.cudaVersion = "12";
            };
          }
        );
      # Variables for LLVM runtime configuration
      gccForLibs = nixpkgs.stdenv.cc.cc;
    in
    {
      # Development environment output
      devShells = forAllSystems (
        { pkgs }:
        {
          default = pkgs.mkShell {
            # Use minimal stdenv to avoid interference
            stdenv = pkgs.stdenv;
            python = pkgs.python3;
            # The Nix packages provided in the environment
            packages = with pkgs; [
              boost # The Boost libraries
              ccache
              # stdenv.cc
              gcc # The GNU Compiler Collection
              gcc_multi
              glibc_multi
              glibc
              glibc.dev
              clang
              # pkgs-stable.cmake
              python313Packages.cmake
              ninja
              ffmpeg
              fmt.dev
              cudaPackages.cuda_cudart
              cudaPackages.cuda_cudart.static
              cudaPackages.cudnn
              cudatoolkit
              # nvidia package should be consistent with the system nvidia driver
              # otherwise nvidia-smi will spawn error like this:
              # Failed to initialize NVML: Driver/library version mismatch
              linuxPackages.nvidia_x11_vulkan_beta_open

              mold
              libGLU
              libGL
              glfw
              sccache
              xorg.libXi
              xorg.libXmu
              freeglut
              xorg.libXext
              xorg.libX11
              xorg.libXv
              xorg.libXrandr
              zlib
              ncurses5
              binutils
              uv
              vulkan-volk
              vulkan-tools
              vulkan-loader
              vulkan-helper
              vulkan-validation-layers
              vulkan-utility-libraries
              python313Packages.pybind11
              python313Packages.nanobind
              pkg-config
              # LLVM build dependencies
              python313 # For MLIR Python bindings
              python313Packages.pip
              python313Packages.wheel
              python313Packages.setuptools
              # python313Packages.torch-bin
              python313Packages.torch
              python313Packages.torchvision
              python313Packages.torchaudio
              # python313Packages.torchaudio-bin
              python313Packages.torch-audiomentations
              python313Packages.jax
              python313Packages.jax-cuda12-plugin
              python313Packages.librosa
              python313Packages.jiwer
              python313Packages.datasets
              python313Packages.transformers
              python313Packages.evaluate
              python313Packages.accelerate
              trash-cli # For justfile 'trash-put' command
              git # For LLVM source management
              cmake # Ensure latest CMake for LLVM
              which # For Python executable detection
              linuxHeaders # Linux kernel headers for system includes
            ];

            shellHook = ''
              # export GCC_PREFIX="${pkgs.stdenv.cc.cc}"
              # export UV_PYTHON_PREFERENCE="only-system";
              # export UV_PYTHON=${pkgs.python3}
              export LD_LIBRARY_PATH="${pkgs.stdenv.cc.cc.lib.outPath}/lib:${pkgs.linuxPackages.nvidia_x11_vulkan_beta_open}/lib:${pkgs.zlib}/lib:${pkgs.cudatoolkit}/lib64:${pkgs.cudaPackages.cuda_cudart}/lib:${pkgs.cudaPackages.cuda_cudart.static}/lib:$LD_LIBRARY_PATH"
              export CUDA_PATH=${pkgs.cudatoolkit}
              export CUDA_ROOT=${pkgs.cudatoolkit}
              export EXTRA_LDFLAGS="-L${pkgs.linuxPackages.nvidia_x11_vulkan_beta_open}/lib -L${pkgs.cudatoolkit}/lib64 -L${pkgs.cudaPackages.cuda_cudart}/lib -L${pkgs.cudaPackages.cuda_cudart.static}/lib"
              export EXTRA_CCFLAGS="-isystem ${pkgs.glibc_multi.dev}/include"
              export CMAKE_PREFIX_PATH="${pkgs.glfw}:${pkgs.fmt.dev}:${pkgs.cudatoolkit}:${pkgs.cudaPackages.cuda_cudart}:$CMAKE_PREFIX_PATH"
              export PKG_CONFIG_PATH="${pkgs.glfw}/lib/pkgconfig:${pkgs.fmt.dev}/lib/pkgconfig:$PKG_CONFIG_PATH"
              # Fix for CMake CUDA compiler detection - use raw GCC to avoid wrapper issues
              export CMAKE_CUDA_COMPILER=${pkgs.cudatoolkit}/bin/nvcc
              export CUDACXX=${pkgs.cudatoolkit}/bin/nvcc
              export CMAKE_CUDA_COMPILER_FORCED=1
              export CMAKE_C_COMPILER=${pkgs.gcc.cc}/bin/gcc
              export CMAKE_CXX_COMPILER=${pkgs.gcc.cc}/bin/g++
              # Use raw GCC binaries instead of Nix wrappers to fix #include_next issues
              export PATH="${pkgs.gcc.cc}/bin:${pkgs.binutils}/bin:$PATH"
              # Clear all Nix wrapper environment variables that interfere with compilation
              unset CPLUS_INCLUDE_PATH
              unset C_INCLUDE_PATH  
              unset CPATH
              unset NIX_CFLAGS_COMPILE
              unset NIX_LDFLAGS_BEFORE
              # Add CUDA headers and system headers for the raw GCC compiler
              export CPLUS_INCLUDE_PATH="${pkgs.cudaPackages.cuda_cudart.dev}/include:${pkgs.cudatoolkit}/include:${pkgs.glibc_multi.dev}/include:${pkgs.linuxHeaders}/include"
              export C_INCLUDE_PATH="${pkgs.cudaPackages.cuda_cudart.dev}/include:${pkgs.cudatoolkit}/include:${pkgs.glibc_multi.dev}/include:${pkgs.linuxHeaders}/include"
              export NIX_LDFLAGS="-L${pkgs.glibc_multi.out}/lib -L${pkgs.gcc.cc.lib}/lib -L${pkgs.cudatoolkit}/lib64 -L${pkgs.cudaPackages.cuda_cudart}/lib -L${pkgs.cudaPackages.cuda_cudart.static}/lib $NIX_LDFLAGS"
              export LIBRARY_PATH="${pkgs.gcc.cc.lib}/lib:${pkgs.glibc_multi.out}/lib:${pkgs.cudatoolkit}/lib64:${pkgs.cudaPackages.cuda_cudart}/lib:${pkgs.cudaPackages.cuda_cudart.static}/lib:$LIBRARY_PATH"
              # CUDA compiler settings - use raw GCC for NVCC host compiler
              export NVCC_CCBIN="${pkgs.gcc.cc}/bin/g++"
              export CUDAHOSTCXX="${pkgs.gcc.cc}/bin/g++"
              export CUDAHOSTCOMPILER="${pkgs.gcc.cc}/bin/g++"
              # Tell CMake to use raw GCC for CUDA host compilation
              export CMAKE_CUDA_HOST_COMPILER="${pkgs.gcc.cc}/bin/g++"
              export CMAKE_CUDA_FLAGS="-ccbin=${pkgs.gcc.cc}/bin/g++ --allow-unsupported-compiler"
              # Configure clang's default system header search paths
              export CMAKE_C_FLAGS="-isystem ${pkgs.glibc_multi.dev}/include -isystem ${pkgs.linuxHeaders}/include"
              export CMAKE_CXX_FLAGS="-isystem ${pkgs.glibc_multi.dev}/include -isystem ${pkgs.linuxHeaders}/include"
              # Configure sccache with proper cache directory and size
              export SCCACHE_DIR="$HOME/.cache/sccache"
              export SCCACHE_CACHE_SIZE="32G"
              # Force TCP-only mode - completely avoid Unix sockets to prevent SUN_LEN errors
              export SCCACHE_SERVER_PORT="4226"
              export SCCACHE_IDLE_TIMEOUT="0"
              unset SCCACHE_SERVER_SOCKET
              export SCCACHE_NO_DAEMON="false"
              # Prestart sccache server with TCP-only configuration
              sccache --start-server 2>/dev/null || true

              # Critical LLVM runtimes configuration for newly built clang
              # Configure NIX_LDFLAGS and CFLAGS for runtime build (based on NixOS wiki)
              export NIX_LDFLAGS="-L${pkgs.gcc.cc}/lib/gcc/${pkgs.stdenv.targetPlatform.config}/${pkgs.gcc.cc.version} -L${pkgs.glibc}/lib $NIX_LDFLAGS"
              export CFLAGS="-B${pkgs.gcc.cc}/lib/gcc/${pkgs.stdenv.targetPlatform.config}/${pkgs.gcc.cc.version} -B${pkgs.glibc}/lib"
              export CXXFLAGS="-B${pkgs.gcc.cc}/lib/gcc/${pkgs.stdenv.targetPlatform.config}/${pkgs.gcc.cc.version} -B${pkgs.glibc}/lib"

              # Configure clang driver to use system GCC toolchain and find mold
              export CLANG_DRIVER_ARGS="--gcc-toolchain=${pkgs.gcc.cc} --sysroot=${pkgs.glibc}"
              export CMAKE_CXX_COMPILER_ARG1="--gcc-toolchain=${pkgs.gcc.cc}"
              export CMAKE_C_COMPILER_ARG1="--gcc-toolchain=${pkgs.gcc.cc}"

              # For LLVM runtimes: Configure newly built clang with proper system paths
              export LLVM_RUNTIMES_DYNAMIC_LINKER="${pkgs.glibc}/lib/ld-linux-x86-64.so.2"
              export LLVM_RUNTIMES_GLIBC_LIB="${pkgs.glibc}/lib"
              export LLVM_RUNTIMES_GCC_LIB="${pkgs.gcc.cc.lib}/lib"
              export LLVM_RUNTIMES_GLIBC_INCLUDE="${pkgs.glibc.dev}/include"
              # CRT files path for startup objects (Scrt1.o, crti.o, etc.)
              export LLVM_RUNTIMES_CRT_DIR="${pkgs.glibc}/lib"
              # GCC CRT files path for runtime objects (crtbeginS.o, crtendS.o, etc.)
              export LLVM_RUNTIMES_GCC_CRT_DIR="${pkgs.gcc.cc}/lib/gcc/x86_64-unknown-linux-gnu/${pkgs.gcc.cc.version}"

              # Configure CMake flags for LLVM runtime builds with mold linker
              # Ensure mold is in PATH and configure linker flags properly
              # Use absolute path to mold to ensure it's found
              export CMAKE_EXE_LINKER_FLAGS="-fuse-ld=${pkgs.mold}/bin/mold -Wl,-rpath,${pkgs.glibc}/lib -Wl,-rpath,${pkgs.gcc.cc.lib}/lib"
              export CMAKE_SHARED_LINKER_FLAGS="-fuse-ld=${pkgs.mold}/bin/mold -Wl,-rpath,${pkgs.glibc}/lib -Wl,-rpath,${pkgs.gcc.cc.lib}/lib"
              export CMAKE_MODULE_LINKER_FLAGS="-fuse-ld=${pkgs.mold}/bin/mold -Wl,-rpath,${pkgs.glibc}/lib -Wl,-rpath,${pkgs.gcc.cc.lib}/lib"

              # Configure the built clang to find mold and system libraries
              export CLANG_DEFAULT_LINKER="mold"
              export CLANG_DEFAULT_RTLIB="libgcc"
              export CLANG_DEFAULT_UNWINDLIB="libgcc"
              export CLANG_DEFAULT_CXX_STDLIB="libstdc++"
              export ENABLE_LINKER_BUILD_ID="ON"
              export CLANG_DEFAULT_PIE_ON_LINUX="ON"

              # Ensure mold can find all necessary libraries
              export LDFLAGS="-L${pkgs.glibc}/lib -L${pkgs.gcc.cc.lib}/lib -fuse-ld=${pkgs.mold}/bin/mold $LDFLAGS"

              # For compiler-rt and runtime builds, ensure proper linker configuration
              export LLVM_ENABLE_LLD="OFF"
              export LLVM_USE_LINKER="${pkgs.mold}/bin/mold"

              # Additional LLVM configuration for runtimes build
              export LLVM_BUILTIN_TARGETS="x86_64-unknown-linux-gnu"
              export LLVM_RUNTIME_TARGETS="x86_64-unknown-linux-gnu"

              # Configure compiler-rt and libcxx build options
              export COMPILER_RT_DEFAULT_TARGET_TRIPLE="x86_64-unknown-linux-gnu"
              export LIBCXX_USE_COMPILER_RT="OFF"
              export LIBCXXABI_USE_COMPILER_RT="OFF"
              export LIBUNWIND_USE_COMPILER_RT="OFF"

              # Set proper sysroot for runtime builds
              export DEFAULT_SYSROOT="${pkgs.glibc}"
              export GCC_INSTALL_PREFIX="${pkgs.gcc.cc}"

              # Ensure mold is available in PATH with higher priority
              export PATH="${pkgs.mold}/bin:$PATH"

              # Create a wrapper script for mold that works with -fuse-ld=mold
              mkdir -p $HOME/.local/bin
              ln -sf ${pkgs.mold}/bin/mold $HOME/.local/bin/ld.mold 2>/dev/null || true
              ln -sf ${pkgs.mold}/bin/mold $HOME/.local/bin/mold 2>/dev/null || true
              export PATH="$HOME/.local/bin:$PATH"

              # Additional CUDA configuration for MLIR
              export CUDA_TOOLKIT_ROOT_DIR=${pkgs.cudatoolkit}
              export CUDA_SDK_ROOT_DIR=${pkgs.cudatoolkit}
              export CUDA_BIN_PATH=${pkgs.cudatoolkit}/bin
              export CUDA_LIB_PATH=${pkgs.cudatoolkit}/lib64
              export CUDA_INCLUDE_PATH=${pkgs.cudatoolkit}/include

              # NVIDIA/CUDA specific environment variables for vLLM
              export NVIDIA_VISIBLE_DEVICES=all
              export NVIDIA_DRIVER_CAPABILITIES=compute,utility
              export CUDA_VISIBLE_DEVICES=all
              # NVML library should be available through system NVIDIA drivers
              # On NixOS, this is handled by the nvidia drivers in the system configuration
            '';

          };
        }
      );
    };
}
