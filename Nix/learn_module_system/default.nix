let
  pkgs = import <nixpkgs> { };
  result = pkgs.lib.evalModules {
    modules = [
      ./option.nix
      ./config.nix
    ];
  };
in
result.config
