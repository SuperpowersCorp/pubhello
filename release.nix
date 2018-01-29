let
  pkgs = import <nixpkgs> { };

in
  { pubhello = pkgs.haskellPackages.callPackage ./default.nix {}; }
