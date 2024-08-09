let
  pkgs = import <nixpkgs> { };
in
{
  goread = pkgs.callPackage ./go/goread.nix { };
  gotree = pkgs.callPackage ./go/gotree.nix { };
  en-croissant = pkgs.callPackage ./appimage/enCroissant.nix { };
  enteAuth = pkgs.callPackage ./appimage/enteAuth.nix { };
}
