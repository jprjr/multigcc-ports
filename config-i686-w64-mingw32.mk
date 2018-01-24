TRIPLET = i686-w64-mingw32
TOOLCHAIN = ${TRIPLET}-

STAGE   = /var/cache/buildroot/stage
REPO    = /var/cache/repo
SOURCES = /var/cache/sources
WORK    = `{printf '/var/cache/buildroot/src/%s-%s' "$pkg" "$(id -u)"}
NPROC   = 4

CC     = ${TOOLCHAIN}gcc
CXX    = ${TOOLCHAIN}g++
LD     = ${TOOLCHAIN}ld
WINDRES = ${TOOLCHAIN}windres
RC = ${TOOLCHAIN}windres
HOSTCC = gcc
HOSTCXX = g++
AR     = ${TOOLCHAIN}ar
RANLIB = ${TOOLCHAIN}ranlib
STRIP  = ${TOOLCHAIN}strip
GREP   = /usr/bin/grep
SED    = /usr/bin/sed
LEX    = /usr/bin/flex
YACC   = /usr/bin/yacc
TAR    = /usr/bin/tar

CHOST     = x86_64-pc-linux-musl
CBUILD    = x86_64-pc-linux-musl
CTARGET   = $TRIPLET

CFLAGS =
CPPFLAGS =
LDFLAGS   = -s
CONFIGURE = --prefix=/usr/$CTARGET \
            --host=$CTARGET \
            --build=$CBUILD \
            --mandir=/usr/$CTARGET/share/man \
            --libdir=/usr/$CTARGET/lib \
            --includedir=/usr/$CTARGET/include \
            --enable-static \
            --enable-shared \
            --disable-nls \
            --disable-multilib
