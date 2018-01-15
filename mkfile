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
