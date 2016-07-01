source $stdenv/setup

tar zxvf $src

mkdir build-binutils
cd build-binutils

../binutils-*/configure --target=i686-elf --prefix=$out --with-sysroot --disable-nls --disable-werror

make
make install
