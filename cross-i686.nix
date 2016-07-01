
{ system ? builtins.currentSystem }:

let
  pkgs = import <nixpkgs> { inherit system; };
in
rec {
  
  i686-binutils = import ./cross/i686-binutils {
    inherit (pkgs) bison flex gmp mpfr libmpc texinfo isl cloog stdenv fetchurl;
  };
  
  i686-gcc = import ./cross/i686-gcc {
    inherit i686-binutils;
    inherit (pkgs) bison flex gmp mpfr libmpc texinfo isl cloog stdenv fetchurl;
  };
}

