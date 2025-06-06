# treefmt.nix
{ pkgs, ... }:
{
  # Used to find the project root
  projectRootFile = "flake.nix";
  programs.nixfmt.enable = true;
  programs.rustfmt.enable = true;
  programs.rustfmt.package = pkgs.rustfmt;
  programs.clang-format.enable = true;
  programs.clang-format.includes = [
    "*.cu"
    "*.c"
    "*.cpp"
    "*.h"
  ];
}
