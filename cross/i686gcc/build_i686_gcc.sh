source $stdenv/setup

which -- i686-elf-as || echo i686-elf-as is not in the PATH

tar zxvf $src
 
mkdir build-gcc
cd build-gcc

../gcc*/configure --target=i686-elf --prefix=$out --disable-nls --enable-languages=c --without-headers --with-as=$i686binutils/bin/i686-elf-as --with-ld=$i686binutils/bin/i686-elf-ld

make all-gcc
make all-target-libgcc
make install-gcc
make install-target-libgcc
