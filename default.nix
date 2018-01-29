{ mkDerivation, pkgs, base, hspec, QuickCheck, stdenv }:
let
  focus-prelude = pkgs.haskellPackages.callPackage /nix/store/s4yrkq5p0x3m3kz9fwv30pmz86hwflji-focus-prelude-97a3983/default.nix { };
in
  mkDerivation {
    pname = "pubhello";
    version = "0.1.0.0";
    src = ./.;
    isLibrary = true;
    isExecutable = true;
    libraryHaskellDepends = [ base focus-prelude ];
    executableHaskellDepends = [ base focus-prelude ];
    testHaskellDepends = [ base focus-prelude hspec QuickCheck ];
    homepage = "https://github.com/superpowerscorp/pubhello#readme";
    license = stdenv.lib.licenses.unfree;
  }
