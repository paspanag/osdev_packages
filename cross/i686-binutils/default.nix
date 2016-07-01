{ bison, flex, gmp, mpfr, libmpc, texinfo, isl, cloog, stdenv, fetchurl }:

stdenv.mkDerivation {
	name = "i686-binutils";
	src = fetchurl {
		url = "http://ftp.gnu.org/gnu/binutils/binutils-2.26.1.tar.gz";
		md5 = "0a40e61a60f09796a2313aa7fcc7bb07";
	};
	builder = ./build_i686_binutils.sh;
	buildInputs = [ bison flex gmp mpfr libmpc texinfo isl cloog ];
	
}
