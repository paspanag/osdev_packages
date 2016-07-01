
{ system ? builtins.currentSystem }:

let
	pkgs = import <nixpkgs> { inherit system; };
	callPackage = pkgs.lib.callPackageWith (pkgs // self);
	self = {

		i686-binutils = callPackage ./cross/i686-binutils {};

		i686-gcc = callPackage ./cross/i686-gcc {};
	};

in
self
