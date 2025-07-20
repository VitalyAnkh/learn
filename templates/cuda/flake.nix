{

  description = "Example C++ development environment for Zero to Nix";

  # Flake inputs

  inputs = {

    # Latest stable Nixpkgs

    nixpkgs.url = "https://flakehub.com/f/NixOS/nixpkgs/0";

  };

  # Flake outputs

  outputs =

    { self, nixpkgs }:

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

    in

    {

      # Development environment output

      devShells = forAllSystems (

        { pkgs }:

        {

          default = pkgs.mkShell {

            # The Nix packages provided in the environment

            packages = with pkgs; [

              boost # The Boost libraries

              ccache

              gcc # The GNU Compiler Collection

              clang

              cmake

              ninja

              ffmpeg

              fmt.dev

              cudaPackages.cuda_cudart

              cudaPackages.cudnn

              cudatoolkit

              linuxPackages.nvidia_x11

              mold

              libGLU

              libGL

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

              stdenv.cc

              binutils

              uv

              python312Packages.pybind11

              python312Packages.nanobind

            ];

            shellHook = ''


              export LD_LIBRARY_PATH="${pkgs.linuxPackages.nvidia_x11}/lib:$LD_LIBRARY_PATH"


              export CUDA_PATH=${pkgs.cudatoolkit}Add commentMore actions


              export EXTRA_LDFLAGS="-L/lib -L${pkgs.linuxPackages.nvidia_x11}/lib"


              export EXTRA_CCFLAGS="-I/usr/include"


              export CMAKE_PREFIX_PATH="${pkgs.fmt.dev}:$CMAKE_PREFIX_PATH"


              export PKG_CONFIG_PATH="${pkgs.fmt.dev}/lib/pkgconfig:$PKG_CONFIG_PATH"


            '';

          };

        }

      );

    };

}
