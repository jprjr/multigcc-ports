ALL = `{ls | grep -vE '[A-Z]+|[a-z]*\.mk|mkfile'}

<deps.mk
<config.mk

default:QV:
	echo "no default rule."
	echo "* <port>"
	echo "* all"
	echo "* clean"
	echo "* distclean"

all:QV: ${ALL}
	echo you\'re done.

gcc4.9:QV:
	mk gcc-4.9
	mk arm-linux-musleabi-gcc-4.9
	mk arm-linux-musleabihf-gcc-4.9
	mk i486-pc-linux-musl-gcc-4.9
	mk i686-w64-mingw32-gcc-4.9
	mk x86_64-w64-mingw32-gcc-4.9
	pm -vaf ${REPO}/gcc-4.9@4.9.4.tgz
	pm -vaf ${REPO}/arm-linux-musleabi-gcc-4.9@4.9.4.tgz
	pm -vaf ${REPO}/arm-linux-musleabihf-gcc-4.9@4.9.4.tgz
	pm -vaf ${REPO}/i486-pc-linux-musl-gcc-4.9@4.9.4.tgz
	pm -vaf ${REPO}/i686-w64-mingw32-gcc-4.9@4.9.4.tgz
	pm -vaf ${REPO}/x86_64-w64-mingw32-gcc-4.9@4.9.4.tgz
	echo built gcc4.9

gcc5.5:QV:
	mk gcc-5.5
	mk arm-linux-musleabi-gcc-5.5
	mk arm-linux-musleabihf-gcc-5.5
	mk i486-pc-linux-musl-gcc-5.5
	mk i686-w64-mingw32-gcc-5.5
	mk x86_64-w64-mingw32-gcc-5.5
	pm -vaf ${REPO}/gcc-5.5@5.5.0.tgz
	pm -vaf ${REPO}/arm-linux-musleabi-gcc-5.5@5.5.0.tgz
	pm -vaf ${REPO}/arm-linux-musleabihf-gcc-5.5@5.5.0.tgz
	pm -vaf ${REPO}/i486-pc-linux-musl-gcc-5.5@5.5.0.tgz
	pm -vaf ${REPO}/i686-w64-mingw32-gcc-5.5@5.5.0.tgz
	pm -vaf ${REPO}/x86_64-w64-mingw32-gcc-5.5@5.5.0.tgz
	echo built gcc5.5

gcc6.4:QV:
	mk gcc-6.4
	mk arm-linux-musleabi-gcc-6.4
	mk arm-linux-musleabihf-gcc-6.4
	mk i486-pc-linux-musl-gcc-6.4
	mk i686-w64-mingw32-gcc-6.4
	mk x86_64-w64-mingw32-gcc-6.4
	pm -vaf ${REPO}/gcc-6.4@6.4.0.tgz
	pm -vaf ${REPO}/arm-linux-musleabi-gcc-6.4@6.4.0.tgz
	pm -vaf ${REPO}/arm-linux-musleabihf-gcc-6.4@6.4.0.tgz
	pm -vaf ${REPO}/i486-pc-linux-musl-gcc-6.4@6.4.0.tgz
	pm -vaf ${REPO}/i686-w64-mingw32-gcc-6.4@6.4.0.tgz
	pm -vaf ${REPO}/x86_64-w64-mingw32-gcc-6.4@6.4.0.tgz

gcc7.2:QV:
	mk gcc-7.2
	mk arm-linux-musleabi-gcc-7.2
	mk arm-linux-musleabihf-gcc-7.2
	mk i486-pc-linux-musl-gcc-7.2
	mk i686-w64-mingw32-gcc-7.2
	mk x86_64-w64-mingw32-gcc-7.2
	pm -vaf ${REPO}/gcc-7.2@7.2.0.tgz
	pm -vaf ${REPO}/arm-linux-musleabi-gcc-7.2@7.2.0.tgz
	pm -vaf ${REPO}/arm-linux-musleabihf-gcc-7.2@7.2.0.tgz
	pm -vaf ${REPO}/i486-pc-linux-musl-gcc-7.2@7.2.0.tgz
	pm -vaf ${REPO}/i686-w64-mingw32-gcc-7.2@7.2.0.tgz
	pm -vaf ${REPO}/x86_64-w64-mingw32-gcc-7.2@7.2.0.tgz

bootstrap-clean:QV:
	rm -f ${REPO}/basefs@*.tgz
	rm -f ${REPO}/acl@*.tgz
	rm -f ${REPO}/attr@*.tgz
	rm -f ${REPO}/autoconf@*.tgz
	rm -f ${REPO}/automake@*.tgz
	rm -f ${REPO}/bash@*.tgz
	rm -f ${REPO}/binutils@*.tgz
	rm -f ${REPO}/bison@*.tgz
	rm -f ${REPO}/bzip2@*.tgz
	rm -f ${REPO}/ca-certificates@*.tgz
	rm -f ${REPO}/cmake@*.tgz
	rm -f ${REPO}/compiler-rt@*.tgz
	rm -f ${REPO}/coreutils@*.tgz
	rm -f ${REPO}/curl@*.tgz
	rm -f ${REPO}/dash@*.tgz
	rm -f ${REPO}/diffutils@*.tgz
	rm -f ${REPO}/execline@*.tgz
	rm -f ${REPO}/file@*.tgz
	rm -f ${REPO}/findutils@*.tgz
	rm -f ${REPO}/flex@*.tgz
	rm -f ${REPO}/gawk@*.tgz
	rm -f ${REPO}/gettext@*.tgz
	rm -f ${REPO}/git@*.tgz
	rm -f ${REPO}/grep@*.tgz
	rm -f ${REPO}/help2man@*.tgz
	rm -f ${REPO}/libarchive@*.tgz
	rm -f ${REPO}/libbio@*.tgz
	rm -f ${REPO}/libcxx@*.tgz
	rm -f ${REPO}/libexpat@*.tgz
	rm -f ${REPO}/libffi@*.tgz
	rm -f ${REPO}/libfmt@*.tgz
	rm -f ${REPO}/libgmp@*.tgz
	rm -f ${REPO}/libisl@*.tgz
	rm -f ${REPO}/libmpc@*.tgz
	rm -f ${REPO}/libmpfr@*.tgz
	rm -f ${REPO}/libregexp9@*.tgz
	rm -f ${REPO}/libressl@*.tgz
	rm -f ${REPO}/libtool@*.tgz
	rm -f ${REPO}/libunwind@*.tgz
	rm -f ${REPO}/libutf@*.tgz
	rm -f ${REPO}/libxml2@*.tgz
	rm -f ${REPO}/linux-headers@*.tgz
	rm -f ${REPO}/llvm@*.tgz
	rm -f ${REPO}/m4@*.tgz
	rm -f ${REPO}/make@*.tgz
	rm -f ${REPO}/mk@*.tgz
	rm -f ${REPO}/musl@*.tgz
	rm -f ${REPO}/ncurses@*.tgz
	rm -f ${REPO}/nghttp2@*.tgz
	rm -f ${REPO}/patch@*.tgz
	rm -f ${REPO}/pcre2@*.tgz
	rm -f ${REPO}/perl@*.tgz
	rm -f ${REPO}/pigz@*.tgz
	rm -f ${REPO}/pkgconf@*.tgz
	rm -f ${REPO}/pm@*.tgz
	rm -f ${REPO}/python@*.tgz
	rm -f ${REPO}/readline@*.tgz
	rm -f ${REPO}/sed@*.tgz
	rm -f ${REPO}/tar@*.tgz
	rm -f ${REPO}/which@*.tgz
	rm -f ${REPO}/xz@*.tgz
	rm -f ${REPO}/zlib@*.tgz
	rm -f ${REPO}/s6@*.tgz
	rm -f ${REPO}/s6-dns@*.tgz
	rm -f ${REPO}/s6-linux-utils@*.tgz
	rm -f ${REPO}/s6-networking@*.tgz
	rm -f ${REPO}/s6-overlay@*.tgz
	rm -f ${REPO}/s6-portable-utils@*.tgz

bootstrap:QV: \
	acl \
	attr \
	autoconf \
	automake \
	bash \
	binutils \
	bison \
	bzip2 \
	ca-certificates \
	cmake \
	compiler-rt \
	coreutils \
	curl \
	dash \
	diffutils \
	execline \
	file \
	findutils \
	flex \
	gawk \
	gettext \
	git \
	grep \
	help2man \
	libarchive \
	libbio \
	libcxx \
	libexpat \
	libffi \
	libfmt \
	libgmp \
	libisl \
	libmpc \
	libmpfr \
	libregexp9 \
	libressl \
	libtool \
	libunwind \
	libutf \
	libxml2 \
	linux-headers \
	llvm \
	m4 \
	make \
	mk \
	musl \
	ncurses \
	nghttp2 \
	patch \
	pcre2 \
	perl \
	pigz \
	pkgconf \
	pm \
	python \
	readline \
	sed \
	tar \
	which \
	xz \
	skalibs \
	s6 \
	s6-dns \
	s6-linux-utils \
	s6-networking \
	s6-overlay \
	s6-portable-utils \
	zlib
	mk basefs
	for d in $prereq; do pm -vaf ${REPO}/${d}@*.tgz; done
	echo bootstrapped

cross-packages:QV: \
	i686-w64-mingw32-boost \
	i686-w64-mingw32-bzip2 \
	i686-w64-mingw32-xz \
	i686-w64-mingw32-zlib \
	wclang \
	x86_64-apple-darwin13-cctools \
	x86_64-apple-darwin14-cctools \
	x86_64-apple-darwin15-cctools \
	x86_64-apple-darwin16-cctools \
	x86_64-apple-darwin17-cctools \
	x86_64-w64-mingw32-boost \
	x86_64-w64-mingw32-bzip2 \
	x86_64-w64-mingw32-xz \
	x86_64-w64-mingw32-zlib
	for d in $prereq; do pm -vaf ${REPO}/${d}@*.tgz; done


# due to a bug in mk(1), you need to use the -s flag when
# trying to build multiple targets from the cli, otherwise
# the recipe will be executed one more time for the fake
# target "command line arguments"
NPROC = 1
%:V:
	for d in $prereq; do pm -vaf ${REPO}/${d}@*.tgz; done
	cd $stem
	env -i PATH=$PATH mk
	env -i PATH=$PATH mk clean

clean:QV:
	pm -d $(pm -i | cut -f1)
	for p in ${ALL}; do (cd $p; mk clean); done

distclean:QV:
	for p in ${ALL}; do (cd $p; mk distclean); done
