acl:V: attr
attr:V: gettext
automake:V: autoconf
bash:V: readline ncurses
binutils:V: musl
boost:V: python
cmake:V: libarchive python curl
curl:V: libressl zlib ca-certificates
dash: autoconf
gcc-4.9:V: binutils zlib libmpc libisl musl
gcc-5.5:V: binutils zlib libmpc libisl musl
gcc-6.4:V: binutils zlib libmpc libisl musl
gcc-7.2:V: binutils zlib libmpc libisl musl
git:V: curl libexpat pcre2 perl
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
mk:V: libutf libfmt libbio libregexp9
musl:V: linux-headers
pm:V: libarchive zlib bzip2 attr acl xz
pigz:V: zlib
python:V: zlib readline bzip2 libressl
tar:V: pigz bzip2 xz
