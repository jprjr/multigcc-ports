acl:V: attr
attr:V: gettext
automake:V: autoconf
bash:V: readline ncurses
binutils:V: zlib
boost:V: python zlib bzip2 xz
cmake:V: libarchive python curl
curl:V: libressl zlib ca-certificates
dash: autoconf
gcc:V: binutils libmpc libisl musl zlib
git:V: zlib curl libexpat pcre2 perl gcc
libarchive:V: zlib bzip2 xz acl attr libressl
libbio:V: libutf libfmt
libfmt:V: libutf
libgmp:V: libtool
libisl:V: libgmp
libmpc:V: libgmp libmpfr
libmpfr:V: libgmp
libregexp9:V: libutf libfmt
libressl:V: linux-headers zlib musl
libtool:V: help2man
libunwind:V: cmake
llvm:V: cmake gcc libffi
mk:V: libutf libfmt libbio libregexp9
musl:V: linux-headers
pm:V: libarchive zlib bzip2 attr acl xz
pigz:V: zlib
python:V: zlib readline bzip2 libressl
tar:V: pigz bzip2 xz
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
