{ lib, ... }:
{
  config = {
    scripts.output = lib.mkOption {
      type = lib.types.lines;
    };
  };
}
