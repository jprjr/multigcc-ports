acl:V: attr
attr:V: gettext
automake:V: autoconf
bash:V: readline ncurses
binutils:V: zlib
boost:V: python zlib bzip2 xz
cmake:V: libarchive python curl
compiler-rt:V: libcxx
curl:V: libressl zlib ca-certificates nghttp2
dash:V: autoconf
execline:V: skalibs
gcc:V: binutils libmpc libisl musl zlib
git:V: zlib curl libexpat pcre2 perl gcc
libarchive:V: zlib bzip2 xz acl attr libressl
libbio:V: libutf libfmt
libcxx:V: libunwind
libfmt:V: libutf
libgmp:V: libtool
libisl:V: libgmp
libmpc:V: libgmp libmpfr
libmpfr:V: libgmp
libregexp9:V: libutf libfmt
libressl:V: linux-headers zlib musl
libtool:V: help2man
libunwind:V: cmake
libxml2:V: zlib python
llvm:V: cmake libffi compiler-rt libcxx libunwind
mk:V: libutf libfmt libbio libregexp9
musl:V: linux-headers
musl-fts:V: pkgconf musl
pm:V: libarchive zlib bzip2 attr acl xz
perl:V: zlib readline bzip2 libressl xz
pigz:V: zlib
python:V: zlib readline bzip2 libressl
s6:V: skalibs execline
s6-dns:V: skalibs
s6-networking:V: skalibs execline s6 s6-dns libressl
s6-overlay: skalibs s6 s6-dns s6-networking s6-portable-utils s6-linux-utils execline
s6-portable-utils:V: skalibs
s6-linux-utils:V: skalibs
stow:V: perl
tar:V: pigz bzip2 xz
util-linux:V: linux-headers
xar:V: libressl libxml2 musl-fts
arm-linux-musleabi-binutils:V: zlib gcc
arm-linux-musleabi-gcc:V: arm-linux-musleabi-binutils arm-linux-musleabi-musl zlib libmpc libisl gcc
arm-linux-musleabi-zlib:V: arm-linux-musleabi-gcc
arm-linux-musleabihf-binutils:V: zlib gcc
arm-linux-musleabihf-gcc:V: arm-linux-musleabihf-binutils arm-linux-musleabihf-musl zlib libmpc libisl gcc
arm-linux-musleabihf-zlib:V: arm-linux-musleabihf-gcc
i486-pc-linux-musl-binutils:V: zlib gcc
i486-pc-linux-musl-gcc:V: i486-pc-linux-musl-binutils i486-pc-linux-musl-musl zlib libmpc libisl gcc
i486-pc-linux-musl-zlib:V: i486-pc-linux-musl-gcc
x86_64-apple-darwin14-cctools:V: musl-fts xar util-linux libtapi
x86_64-w64-mingw32-binutils:V: zlib gcc
x86_64-w64-mingw32-boost:V: x86_64-w64-mingw32-gcc x86_64-w64-mingw32-bzip2 x86_64-w64-mingw32-zlib x86_64-w64-mingw32-xz
x86_64-w64-mingw32-mingw:V: x86_64-w64-mingw32-binutils
x86_64-w64-mingw32-gcc:V: zlib libmpc libisl x86_64-w64-mingw32-binutils x86_64-w64-mingw32-mingw gcc
x86_64-w64-mingw32-zlib:V: x86_64-w64-mingw32-gcc
i686-w64-mingw32-binutils:V: zlib gcc
i686-w64-mingw32-boost:V: i686-w64-mingw32-gcc i686-w64-mingw32-bzip2 i686-w64-mingw32-zlib i686-w64-mingw32-xz
i686-w64-mingw32-mingw:V: i686-w64-mingw32-binutils
i686-w64-mingw32-gcc:V: zlib libmpc libisl i686-w64-mingw32-binutils i686-w64-mingw32-mingw gcc
i686-w64-mingw32-zlib:V: i686-w64-mingw32-gcc
