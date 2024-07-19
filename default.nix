let
  pkgs = import <nixpkgs> { };
in
{
  goread = pkgs.callPackage ./go/goread.nix { };
  gotree = pkgs.callPackage ./go/gotree.nix { };
}