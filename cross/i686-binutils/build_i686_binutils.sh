source $stdenv/setup

tar zxvf $src

cd binutils-*

./configure --target=i686-elf --prefix=$out --with-sysroot --disable-nls --disable-werror

make
make install
