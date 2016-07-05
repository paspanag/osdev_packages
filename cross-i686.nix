
{ system ? builtins.currentSystem }:

let
	pkgs = import <nixpkgs> { inherit system; };
	callPackage = pkgs.lib.callPackageWith (pkgs // self);
	self = {

		i686binutils = callPackage ./cross/i686binutils {};

		i686gcc = callPackage ./cross/i686gcc {};
	};

in
self
