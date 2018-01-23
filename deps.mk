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
gcc-4.9:V: binutils libmpc libisl musl zlib
gcc-5.5:V: binutils libmpc libisl musl zlib
gcc-6.4:V: binutils libmpc libisl musl zlib
gcc-7.2:V: binutils libmpc libisl musl zlib
git:V: zlib curl libexpat pcre2 perl
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
arm-linux-musleabi-binutils:V: zlib
arm-linux-musleabi-gcc-4.9:V: arm-linux-musleabi-binutils arm-linux-musleabi-musl zlib libmpc libisl gcc-4.9
arm-linux-musleabi-gcc-5.5:V: arm-linux-musleabi-binutils arm-linux-musleabi-musl zlib libmpc libisl gcc-5.5
arm-linux-musleabi-gcc-6.4:V: arm-linux-musleabi-binutils arm-linux-musleabi-musl zlib libmpc libisl gcc-6.4
arm-linux-musleabi-gcc-7.2:V: arm-linux-musleabi-binutils arm-linux-musleabi-musl zlib libmpc libisl gcc-7.2
arm-linux-musleabihf-binutils:V: zlib
arm-linux-musleabihf-gcc-4.9:V: arm-linux-musleabihf-binutils arm-linux-musleabihf-musl zlib libmpc libisl gcc-4.9
arm-linux-musleabihf-gcc-5.5:V: arm-linux-musleabihf-binutils arm-linux-musleabihf-musl zlib libmpc libisl gcc-5.5
arm-linux-musleabihf-gcc-6.4:V: arm-linux-musleabihf-binutils arm-linux-musleabihf-musl zlib libmpc libisl gcc-6.4
arm-linux-musleabihf-gcc-7.2:V: arm-linux-musleabihf-binutils arm-linux-musleabihf-musl zlib libmpc libisl gcc-7.2
i486-pc-linux-musl-binutils:V: zlib
i486-pc-linux-musl-gcc-4.9:V: i486-pc-linux-musl-binutils i486-pc-linux-musl-musl zlib libmpc libisl gcc-4.9
i486-pc-linux-musl-gcc-5.5:V: i486-pc-linux-musl-binutils i486-pc-linux-musl-musl zlib libmpc libisl gcc-5.5
i486-pc-linux-musl-gcc-6.4:V: i486-pc-linux-musl-binutils i486-pc-linux-musl-musl zlib libmpc libisl gcc-6.4
i486-pc-linux-musl-gcc-7.2:V: i486-pc-linux-musl-binutils i486-pc-linux-musl-musl zlib libmpc libisl gcc-7.2
x86_64-apple-darwin14-cctools:V: musl-fts xar util-linux libtapi
x86_64-w64-mingw32-binutils:V: zlib
x86_64-w64-mingw32-boost:V: x86_64-w64-mingw32-bzip2 x86_64-w64-mingw32-zlib x86_64-w64-mingw32-xz
x86_64-w64-mingw32-mingw:V: x86_64-w64-mingw32-binutils
x86_64-w64-mingw32-gcc-4.9:V: zlib libmpc libisl x86_64-w64-mingw32-binutils x86_64-w64-mingw32-mingw gcc-4.9
x86_64-w64-mingw32-gcc-5.5:V: zlib libmpc libisl x86_64-w64-mingw32-binutils x86_64-w64-mingw32-mingw gcc-5.5
x86_64-w64-mingw32-gcc-6.4:V: zlib libmpc libisl x86_64-w64-mingw32-binutils x86_64-w64-mingw32-mingw gcc-6.4
x86_64-w64-mingw32-gcc-7.2:V: zlib libmpc libisl x86_64-w64-mingw32-binutils x86_64-w64-mingw32-mingw gcc-7.2
i686-w64-mingw32-binutils:V: zlib
i686-w64-mingw32-boost:V: i686-w64-mingw32-bzip2 i686-w64-mingw32-zlib i686-w64-mingw32-xz
i686-w64-mingw32-mingw:V: i686-w64-mingw32-binutils
i686-w64-mingw32-gcc-4.9:V: zlib libmpc libisl i686-w64-mingw32-binutils i686-w64-mingw32-mingw gcc-4.9
i686-w64-mingw32-gcc-5.5:V: zlib libmpc libisl i686-w64-mingw32-binutils i686-w64-mingw32-mingw gcc-5.5
i686-w64-mingw32-gcc-6.4:V: zlib libmpc libisl i686-w64-mingw32-binutils i686-w64-mingw32-mingw gcc-6.4
i686-w64-mingw32-gcc-7.2:V: zlib libmpc libisl i686-w64-mingw32-binutils i686-w64-mingw32-mingw gcc-7.2
