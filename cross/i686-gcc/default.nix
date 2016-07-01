{ i686-binutils, bison, flex, gmp, mpfr, libmpc, texinfo, isl, cloog, stdenv, fetchurl }:

stdenv.mkDerivation {
	name = "cross-i686-gcc";
	src = fetchurl {
		url = "http://gcc.parentingamerica.com/releases/gcc-5.4.0/gcc-5.4.0.tar.gz";
		md5 = "f2b4d5a580061711e68f0f506e402e1c";
	};
	builder = ./build_i686_gcc.sh;
	buildInputs = [ i686-binutils bison flex gmp mpfr libmpc texinfo isl cloog ];
	
}
