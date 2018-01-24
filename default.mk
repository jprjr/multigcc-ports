# this file is sourced from within each pack directory
<../config.mk

srcdir  = `{pwd}
destdir = `{printf '%s/%s/' "$STAGE" "$pkg-$ver"}
archive = `{basename $url 2>/dev/null || echo /dev/null}
tarball = ${REPO}/$pkg@$ver.tgz

# create a pack from an chroot install (see the "install" target)
$tarball:Q:
	mk fetch patch build install cleanup
	cd $destdir
	mkdir -p $(dirname $tarball)
	find . -printf '%P\0' | LC_ALL=C sort -z | \
	GZIP=-9n ${TAR} --null --no-recursion --files-from=- --owner=root --group=root --numeric-owner \
	--mode=go=rX,u+rw,a-s -czf $tarball
	printf '\n\t%s\n\n' "$tarball"

# recipe trying to follow the most common pattern in software
# building
# If it doesn't work, simply override it on a per pack basis
build:V: fetch patch
	cd $WORK/$pkg-$ver
	test -f configure && ./configure $CONFIGURE
	make -j${NPROC}

# install the pack to a .rootfs directory
# this is where the "pack" target will chdir to create the pack
install:QV: build
	mkdir -p $destdir
	cd $WORK/$pkg-$ver
	make -j${NPROC} DESTDIR=$destdir install

cleanup:V: install
	cd $destdir
	test -n "$CLEANUP" && rm -r $CLEANUP
	find . -name '*.la'   | xargs -r rm

# patch your software using everything in ./patches
patch:QV: fetch
	if [ -d "$srcdir/patches" ]; then
		cd $WORK/$pkg-$ver
		cat $srcdir/patches/*.diff | patch -Np1
	fi

# fetch the source
fetch:QV: fetch-git fetch-archive

# if $git is set, clone the repo, and checkout $ver
fetch-git:QV:
	if [ -n "$git" ]; then
		mkdir -p $WORK
		cd $WORK
		test -d $pkg-$ver || git clone -q $git $pkg-$ver
		cd $pkg-$ver
		git reset -q --hard
		git checkout -q $ver
	fi

# if $url is set, download/extract the archive, and move its
# content to a directory named $pkg-$ver
fetch-archive:QV: $WORK/$archive
	if [ -n "$url" ]; then
		cd $WORK
		rm -rf $pkg-$ver
		case $archive in
		*.tar.bz2|*.tbz) method="-j" ;;
		*.tar.gz|*.tgz)  method="-z" ;;
		*.tar.xz|*.txz)  method="-J" ;;
		*) echo "$archive: format not recognized" >&2; exit 1
		esac
		${TAR} $method -xvf $archive
		src=$(${TAR} $method -tf $archive|sed -n 1p|cut -f1 -d/)
		if [ "$src" != "$pkg-$ver" ]; then
			mv "$src" "$pkg-$ver"
		fi
	fi

$WORK/$archive:Q: $SOURCES/$archive
	mkdir -p $WORK
	cd $WORK
	ln -s $SOURCES/$archive

$SOURCES/$archive:Q:
	if [ -n "$url" ]; then
		mkdir -p $SOURCES
		cd $SOURCES
		curl -k -L# $url > $archive
		printf "%s  %s\n" "$sha256sum" "$archive" | sha256sum -c
	fi

# delete everything but the pack
clean:V:
	rm -rf $WORK
	rm -rf $destdir

# remove the pack
distclean:V: clean
	rm -f $tarball
