TRIPLET = x86_64-pc-linux-musl
TOOLCHAIN = ${TRIPLET}-

STAGE   = /var/cache/buildroot/stage
REPO    = /var/cache/repo
WORK    = `{printf '/var/cache/buildroot/src/%s-%s' "$pkg" "$(id -u)"}
NPROC   = 4

CC     = ${TOOLCHAIN}gcc
CXX    = ${TOOLCHAIN}g++
LD     = ${TOOLCHAIN}ld
HOSTCC = $CC
AR     = ${TOOLCHAIN}ar
RANLIB = ${TOOLCHAIN}ranlib
STRIP  = ${TOOLCHAIN}strip
GREP   = /usr/bin/grep
SED    = /usr/bin/sed
LEX    = /usr/bin/flex
YACC   = /usr/bin/yacc
TAR    = /usr/bin/tar

CHOST     = $TRIPLET
CBUILD    = $TRIPLET
CTARGET   = $TRIPLET

CPPFLAGS  = -g0 -Os
CFLAGS    = ${CPPFLAGS}
LDFLAGS   = -s
CONFIGURE = --prefix=/usr \
            --host=$CHOST \
            --build=$CBUILD \
            --mandir=/usr/share/man \
            --libdir=/usr/lib \
            --includedir=/usr/include \
            --enable-static \
            --enable-shared \
            --disable-nls \
            --disable-multilib
