source $stdenv/setup

PATH=$i686-binutils/bin:$PATH
which -- $TARGET-as || echo $TARGET-as is not in the PATH

tar zxvf $src
 
mkdir build-gcc
cd build-gcc

../gcc*/configure --target=i686-elf --prefix=$out --disable-nls --enable-languages=c --without-headers
make all-gcc
make all-target-libgcc
make install-gcc
make install-target-libgcc
