{
  description = "CUDA development environment";
  outputs =
    {
      self,
      nixpkgs,
    }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs {
        inherit system;
        config.allowUnfree = true;
        config.cudaSupport = true;
        config.cudaVersion = "12";
      };
    in
    {
      formatter."${system}" = nixpkgs.legacyPackages.${system}.nixfmt-tree;
      devShells.${system}.default = pkgs.mkShell {
        packages = with pkgs; [
          ffmpeg
          fmt.dev
          cudaPackages.cuda_cudart
          cudatoolkit
          linuxPackages.nvidia_x11
          cudaPackages.cudnn
          libGLU
          libGL
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
        ];

        shellHook = ''
            # export LD_LIBRARY_PATH="${pkgs.linuxPackages.nvidia_x11}/lib:$LD_LIBRARY_PATH"
            # export CUDA_PATH=${pkgs.cudatoolkit}
          #   export EXTRA_LDFLAGS="-L/lib -L${pkgs.linuxPackages.nvidia_x11}/lib"
            # export EXTRA_CCFLAGS="-I/usr/include"
            export CMAKE_PREFIX_PATH="${pkgs.fmt.dev}:$CMAKE_PREFIX_PATH"
            export PKG_CONFIG_PATH="${pkgs.fmt.dev}/lib/pkgconfig:$PKG_CONFIG_PATH"
        '';
      };
    };
}
