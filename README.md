# Nix expressions for building OS dev tools

These tools are based on the recommended setups in osdev.org

To use:

nix-build -f cross-i686.nix -A { i686-gcc | i686-binutils }

nix-env -f cross-i686.nix -iA { i686-gcc | i686-binutils }

You don't need to build the binutils explicitly if you build gcc, but binutils will be needed later.

