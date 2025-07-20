{
  description = "Unreal Engine 5 development environment and packaging for NixOS";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
  };

  outputs = { self, nixpkgs }:
    let
      # Systems supported
      allSystems = [
        "x86_64-linux"
      ];

      # Helper to provide system-specific attributes
      forAllSystems = f: nixpkgs.lib.genAttrs allSystems (
        system: f {
          pkgs = import nixpkgs {
            inherit system;
            config.allowUnfree = true;
            config.cudaSupport = true;
            config.cudaVersion = "12";
          };
        }
      );

      # Function to create UE5 packages (similar to blender's mkBlender)
      mkUnrealEngine = {
        pname,
        version,
        src ? null,
        sourceDir ? null,
        buildFromSource ? false
      }: 
      with nixpkgs.legacyPackages.x86_64-linux;
      
      let
        # Libraries required by UE5 runtime (similar to blender's libs)
        libs = [
          # Graphics libraries
          libGL
          libGLU
          xorg.libX11
          xorg.libXi
          xorg.libXrandr
          xorg.libXinerama
          xorg.libXcursor
          xorg.libXfixes
          xorg.libXrender
          xorg.libXext
          xorg.libXxf86vm
          wayland
          libxkbcommon
          libdrm
          
          # Audio libraries
          alsa-lib
          pulseaudio
          
          # System libraries
          stdenv.cc.cc.lib
          glibc
          zlib
          openssl
          
          # UE5 specific libraries
          icu
          SDL2
          fontconfig
          freetype
          harfbuzz
          
          # CUDA libraries
          cudaPackages.cuda_cudart
          linuxPackages.nvidia_x11
          
          # Vulkan support
          vulkan-loader
          vulkan-validation-layers
        ];
      in
      
      stdenv.mkDerivation rec {
        inherit pname version;
        
        src = if buildFromSource && sourceDir != null 
              then sourceDir
              else src;
        
        # Disable default phases that don't apply to UE5
        dontUseCmakeConfigure = true;
        dontUseNinjaBuild = true;
        dontUseNinjaInstall = true;
        dontFixup = false;
        
        # Note: UE5 dependencies must be downloaded manually in dev environment first
        # Run: nix develop && cd /path/to/UnrealEngine && ./Setup.sh
        
        # Build dependencies
        nativeBuildInputs = [
          makeWrapper
          patchelf
        ] ++ lib.optionals buildFromSource [
          gcc
          mold
          python3
          dotnet-sdk_8
          mono
          git
          which
          gnumake
          bash
          coreutils
          findutils
          gawk
          gnused
          gnugrep
          curl
          wget
          file
        ];
        
        buildInputs = libs;
        
        # Build phase for source builds
        buildPhase = lib.optionalString buildFromSource ''
          echo "Building Unreal Engine ${version} from source..."
          
          # Ensure all shell scripts are executable (find all .sh files)
          find . -name "*.sh" -type f -exec chmod +x {} \;
          
          # Set up environment similar to devShell (using GCC like templates/cpp)
          export CC=${gcc.cc}/bin/gcc
          export CXX=${gcc.cc}/bin/g++
          export DOTNET_ROOT=${dotnet-sdk_8}
          export DOTNET_CLI_TELEMETRY_OPTOUT=1
          export UE_USE_SYSTEM_MONO=1
          export MAKEFLAGS="-j$(nproc)"
          
          # Set up proper library paths
          export LD_LIBRARY_PATH="${lib.makeLibraryPath libs}:$LD_LIBRARY_PATH"
          
          # Configure linker flags for mold
          export LDFLAGS="-fuse-ld=mold"
          
          # Set up PATH to ensure all tools are available
          export PATH="${bash}/bin:${coreutils}/bin:${findutils}/bin:${gawk}/bin:${gnused}/bin:${gnugrep}/bin:${curl}/bin:${wget}/bin:${git}/bin:${python3}/bin:${dotnet-sdk_8}/bin:${mono}/bin:${gcc.cc}/bin:${gnumake}/bin:$PATH"
          
          # Patch all shell scripts to use the correct bash interpreter
          echo "Patching shell scripts to use correct bash path..."
          find . -name "*.sh" -type f -exec sed -i '1s|#!/bin/bash|#!${bash}/bin/bash|' {} \;
          find . -name "*.sh" -type f -exec sed -i '1s|#!/usr/bin/env bash|#!${bash}/bin/bash|' {} \;
          
          # Patch ELF binaries to use the correct dynamic linker
          echo "Patching ELF binaries..."
          find . -type f -executable -exec file {} \; | grep "ELF.*dynamically linked" | cut -d: -f1 | while read -r binary; do
            echo "Patching $binary"
            patchelf --set-interpreter "$(cat $NIX_CC/nix-support/dynamic-linker)" "$binary" 2>/dev/null || true
          done
          
          # Check if dependencies are already downloaded (skip Setup.sh in build)
          if [ ! -f "Engine/Binaries/DotNET/GitDependencies.exe.config" ]; then
            echo "Warning: UE5 dependencies not found. You should run './Setup.sh' manually first."
            echo "Attempting to run Setup.sh anyway..."
            ${bash}/bin/bash ./Setup.sh || echo "Setup.sh failed, continuing anyway..."
          fi
          
          echo "Generating project files..."
          ${bash}/bin/bash ./GenerateProjectFiles.sh
          
          echo "Building UnrealEditor..."
          make UnrealEditor UnrealHeaderTool UnrealPak ShaderCompileWorker
        '';
        
        # Install phase
        installPhase = if buildFromSource then ''
          echo "Installing Unreal Engine ${version}..."
          
          # Create installation directory structure
          mkdir -p $out/opt/unreal-engine
          mkdir -p $out/bin
          mkdir -p $out/share/applications
          mkdir -p $out/share/pixmaps
          
          # Copy engine files
          cp -r Engine $out/opt/unreal-engine/
          cp -r Samples $out/opt/unreal-engine/ || true
          cp -r Templates $out/opt/unreal-engine/ || true
          cp -r FeaturePacks $out/opt/unreal-engine/ || true
          
          # Create wrapper script for UnrealEditor
          makeWrapper $out/opt/unreal-engine/Engine/Binaries/Linux/UnrealEditor $out/bin/UnrealEditor \
            --prefix LD_LIBRARY_PATH : /run/opengl-driver/lib:${lib.makeLibraryPath libs} \
            --set UE_USE_SYSTEM_MONO 1
          
          # Patch ELF files
          find $out/opt/unreal-engine/Engine/Binaries/Linux -type f -executable | while read exe; do
            if [[ -f "$exe" && "$(file "$exe")" == *"ELF"* ]]; then
              echo "Patching $exe"
              patchelf --set-interpreter "$(cat $NIX_CC/nix-support/dynamic-linker)" "$exe" 2>/dev/null || true
            fi
          done
          
          # Create desktop entry
          cat > $out/share/applications/unreal-engine.desktop << EOF
          [Desktop Entry]
          Name=Unreal Engine ${version}
          Comment=Unreal Engine Game Development Platform
          Exec=$out/bin/UnrealEditor
          Icon=unreal-engine
          Terminal=false
          Type=Application
          Categories=Development;Game;
          EOF
          
        '' else ''
          # For binary distributions (future implementation)
          echo "Installing pre-built Unreal Engine ${version}..."
          
          mkdir -p $out/opt/unreal-engine
          mkdir -p $out/bin
          
          # Extract and install pre-built binaries
          cp -r . $out/opt/unreal-engine/
          
          # Create wrapper
          makeWrapper $out/opt/unreal-engine/Engine/Binaries/Linux/UnrealEditor $out/bin/UnrealEditor \
            --prefix LD_LIBRARY_PATH : /run/opengl-driver/lib:${lib.makeLibraryPath libs}
        '';
        
        meta = {
          description = "Unreal Engine ${version} - Game Development Platform";
          homepage = "https://www.unrealengine.com/";
          license = lib.licenses.unfree;
          platforms = [ "x86_64-linux" ];
          mainProgram = "UnrealEditor";
        };
      };

    in
    {
      # Development environment for building UE5 from source (based on successful templates/cpp)
      devShells = forAllSystems ({ pkgs }: {
        default = pkgs.mkShell {
          name = "unreal-engine-dev";
          
          # Build dependencies for Unreal Engine 5
          packages = with pkgs; [
            # Core build tools (based on templates/cpp)
            clang
            lld
            mold
            cmake
            ninja
            git
            python3
            python3Packages.pip
            
            # Mono/.NET support
            mono
            dotnet-sdk_8
            dotnet-runtime_8
            
            # Essential build tools for UE5
            which
            bash
            coreutils
            findutils
            gawk
            gnused
            gnugrep
            curl
            wget
            file
            dos2unix
            patchelf
            
            # System libraries required by UE5 (enhanced from templates/cpp)
            glibc
            glibc.dev
            glibc_multi
            glibc_multi.dev
            gcc
            gcc.cc.lib
            gcc_multi
            binutils
            
            # Graphics and multimedia libraries
            libGL
            libGLU
            libdrm
            xorg.libX11
            xorg.libXi
            xorg.libXrandr
            xorg.libXinerama
            xorg.libXcursor
            xorg.libXfixes
            xorg.libXrender
            xorg.libXext
            xorg.libXxf86vm
            xorg.libXmu
            wayland
            libxkbcommon
            glfw
            freeglut
            
            # Audio libraries
            alsa-lib
            pulseaudio
            
            # Additional dependencies
            zlib
            openssl
            curl
            wget
            which
            pkg-config
            
            # Development tools
            ccache
            sccache
            
            # Libraries commonly needed by UE5
            icu
            icu.dev
            SDL2
            fontconfig
            freetype
            harfbuzz
            fmt.dev
            boost
            
            # CUDA support for UE5 (from templates/cpp)
            cudaPackages.cuda_cudart
            cudaPackages.cuda_cudart.dev
            cudaPackages.cuda_cudart.static
            cudaPackages.cudnn
            cudatoolkit
            linuxPackages.nvidia_x11
            
            # Vulkan support
            vulkan-loader
            vulkan-validation-layers
            vulkan-tools
            vulkan-volk
            vulkan-helper
            vulkan-utility-libraries
            
            # Additional development dependencies
            linuxHeaders
            elfutils
            ncurses5
            uv
            trash-cli
            python3Packages.pybind11
            python3Packages.nanobind
          ];

          shellHook = ''
            echo "Unreal Engine 5 Development Environment"
            echo "======================================="
            
            # Enhanced library paths (based on templates/cpp success)
            export LD_LIBRARY_PATH="${pkgs.stdenv.cc.cc.lib.outPath}/lib:${pkgs.linuxPackages.nvidia_x11}/lib:${pkgs.zlib}/lib:${pkgs.cudatoolkit}/lib64:${pkgs.cudaPackages.cuda_cudart}/lib:${pkgs.cudaPackages.cuda_cudart.static}/lib:${pkgs.libGL}/lib:${pkgs.libGLU}/lib:${pkgs.xorg.libX11}/lib:${pkgs.alsa-lib}/lib:${pkgs.pulseaudio}/lib:${pkgs.icu}/lib:${pkgs.openssl}/lib:$LD_LIBRARY_PATH"
            
            # Configure compilers (use raw GCC like templates/cpp for better compatibility)
            export CC=${pkgs.gcc.cc}/bin/gcc
            export CXX=${pkgs.gcc.cc}/bin/g++
            export CMAKE_C_COMPILER=${pkgs.gcc.cc}/bin/gcc
            export CMAKE_CXX_COMPILER=${pkgs.gcc.cc}/bin/g++
            
            # Use raw GCC binaries instead of Nix wrappers (from templates/cpp)
            export PATH="${pkgs.gcc.cc}/bin:${pkgs.binutils}/bin:$PATH"
            
            # Clear Nix wrapper environment variables (from templates/cpp)
            unset CPLUS_INCLUDE_PATH
            unset C_INCLUDE_PATH  
            unset CPATH
            unset NIX_CFLAGS_COMPILE
            unset NIX_LDFLAGS_BEFORE
            
            # Add system headers for the raw GCC compiler
            export CPLUS_INCLUDE_PATH="${pkgs.cudaPackages.cuda_cudart.dev}/include:${pkgs.cudatoolkit}/include:${pkgs.glibc_multi.dev}/include:${pkgs.linuxHeaders}/include"
            export C_INCLUDE_PATH="${pkgs.cudaPackages.cuda_cudart.dev}/include:${pkgs.cudatoolkit}/include:${pkgs.glibc_multi.dev}/include:${pkgs.linuxHeaders}/include"
            
            # Configure NIX_LDFLAGS and CFLAGS (from templates/cpp wiki guidance)
            export NIX_LDFLAGS="-L${pkgs.gcc.cc}/lib/gcc/${pkgs.stdenv.targetPlatform.config}/${pkgs.gcc.cc.version} -L${pkgs.glibc}/lib -L${pkgs.glibc_multi.out}/lib -L${pkgs.gcc.cc.lib}/lib -L${pkgs.cudatoolkit}/lib64 -L${pkgs.cudaPackages.cuda_cudart}/lib -L${pkgs.cudaPackages.cuda_cudart.static}/lib $NIX_LDFLAGS"
            export CFLAGS="-B${pkgs.gcc.cc}/lib/gcc/${pkgs.stdenv.targetPlatform.config}/${pkgs.gcc.cc.version} -B${pkgs.glibc}/lib"
            export CXXFLAGS="-B${pkgs.gcc.cc}/lib/gcc/${pkgs.stdenv.targetPlatform.config}/${pkgs.gcc.cc.version} -B${pkgs.glibc}/lib"
            
            # Configure library path
            export LIBRARY_PATH="${pkgs.gcc.cc.lib}/lib:${pkgs.glibc_multi.out}/lib:${pkgs.cudatoolkit}/lib64:${pkgs.cudaPackages.cuda_cudart}/lib:${pkgs.cudaPackages.cuda_cudart.static}/lib:$LIBRARY_PATH"
            
            # Use mold as default linker with proper configuration
            export CMAKE_EXE_LINKER_FLAGS="-fuse-ld=mold -Wl,-rpath,${pkgs.glibc}/lib -Wl,-rpath,${pkgs.gcc.cc.lib}/lib"
            export CMAKE_SHARED_LINKER_FLAGS="-fuse-ld=mold -Wl,-rpath,${pkgs.glibc}/lib -Wl,-rpath,${pkgs.gcc.cc.lib}/lib"
            export CMAKE_MODULE_LINKER_FLAGS="-fuse-ld=mold -Wl,-rpath,${pkgs.glibc}/lib -Wl,-rpath,${pkgs.gcc.cc.lib}/lib"
            
            # .NET configuration
            export DOTNET_ROOT=${pkgs.dotnet-sdk_8}
            export DOTNET_CLI_TELEMETRY_OPTOUT=1
            
            # UE5 specific environment variables
            export UE_USE_SYSTEM_MONO=1
            
            # Configure build parallelism
            export MAKEFLAGS="-j$(nproc)"
            
            # CUDA paths for UE5
            export CUDA_PATH=${pkgs.cudatoolkit}
            export CUDA_ROOT=${pkgs.cudatoolkit}
            export EXTRA_LDFLAGS="-L/lib -L${pkgs.linuxPackages.nvidia_x11}/lib -L${pkgs.cudatoolkit}/lib64 -L${pkgs.cudaPackages.cuda_cudart}/lib -L${pkgs.cudaPackages.cuda_cudart.static}/lib"
            export EXTRA_CCFLAGS="-I/usr/include -isystem ${pkgs.glibc_multi.dev}/include"
            
            # CUDA compiler settings
            export NVCC_CCBIN="${pkgs.gcc.cc}/bin/g++"
            export CUDAHOSTCXX="${pkgs.gcc.cc}/bin/g++"
            export CMAKE_CUDA_HOST_COMPILER="${pkgs.gcc.cc}/bin/g++"
            export CMAKE_CUDA_COMPILER=${pkgs.cudatoolkit}/bin/nvcc
            
            # Configure CMake paths
            export CMAKE_PREFIX_PATH="${pkgs.glfw}:${pkgs.fmt.dev}:${pkgs.cudatoolkit}:$CMAKE_PREFIX_PATH"
            export PKG_CONFIG_PATH="${pkgs.glfw}/lib/pkgconfig:${pkgs.fmt.dev}/lib/pkgconfig:$PKG_CONFIG_PATH"
            
            # Configure sccache for faster builds (from templates/cpp)
            export SCCACHE_DIR="$HOME/.cache/sccache"
            export SCCACHE_CACHE_SIZE="32G"
            export SCCACHE_SERVER_PORT="4226"
            export SCCACHE_IDLE_TIMEOUT="0"
            unset SCCACHE_SERVER_SOCKET
            export SCCACHE_NO_DAEMON="false"
            
            # Start sccache server
            sccache --start-server 2>/dev/null || true
            
            # Display build information
            echo "GCC version: $(gcc --version | head -1)"
            echo "CMake version: $(cmake --version | head -1)"
            echo "Python version: $(python3 --version)"
            echo ".NET version: $(dotnet --version)"
            echo "CUDA version: $(nvcc --version | grep release)"
            echo ""
            echo "Ready to build Unreal Engine 5!"
            echo ""
            echo "FIRST TIME SETUP - Patch UE5 scripts for NixOS:"
            echo "bash /home/vitalyr/projects/dev/learn/templates/unreal/patch-ue5-scripts.sh"
            echo ""
            echo "DEVELOPMENT MODE - To build UE5 manually:"
            echo "1. Run the patch script above (once only)"
            echo "2. cd /home/vitalyr/projects/dev/cpp/UnrealEngine"
            echo "3. ./Setup.sh                    # Downloads dependencies (requires internet)"
            echo "4. ./GenerateProjectFiles.sh     # Generates build files"
            echo "5. make UnrealEditor             # Builds the editor"
            echo ""
            echo "PACKAGE MODE - To build UE5 as a Nix package:"
            echo "1. First complete development mode setup (see above)"
            echo "2. exit                          # Exit this shell"
            echo "3. nix build /path/to/templates/unreal/#unreal-engine-5_6 --impure"
            echo ""
            echo "UnrealEngine directory: /home/vitalyr/projects/dev/cpp/UnrealEngine"
          '';
        };
      });

      # Overlays for UE5 packages (similar to blender approach)
      overlays.default = final: prev: {
        # UE5 from source build
        unreal-engine-5_6 = mkUnrealEngine {
          pname = "unreal-engine";
          version = "5.6.0";
          sourceDir = /home/vitalyr/projects/dev/cpp/UnrealEngine;
          buildFromSource = true;
        };
      };

      # Export mkUnrealEngine for external use
      lib.mkUnrealEngine = mkUnrealEngine;

      # Package outputs
      packages = forAllSystems ({ pkgs }: 
        let
          pkgsWithOverlay = import nixpkgs {
            system = "x86_64-linux";
            overlays = [ self.overlays.default ];
            config.allowUnfree = true;
            config.cudaSupport = true;
            config.cudaVersion = "12";
          };
        in rec {
          # UE5 built from source
          unreal-engine-5_6 = pkgsWithOverlay.unreal-engine-5_6;
          
          # Default package
          default = unreal-engine-5_6;
        });
    };
}