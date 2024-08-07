TERMUX_PKG_HOMEPAGE=https://yuriy-chumak.github.io/ol/
TERMUX_PKG_DESCRIPTION="Purely functional dialect of Lisp"
TERMUX_PKG_LICENSE="LGPL-3.0, MIT"
TERMUX_PKG_LICENSE_FILE="COPYING.LESSER, LICENSE"
TERMUX_PKG_MAINTAINER="Yuriy Chumak <yuriy.chumak@mail.com>"
TERMUX_PKG_VERSION="2.5.1"
TERMUX_PKG_REVISION=1
TERMUX_PKG_SRCURL=https://github.com/yuriy-chumak/ol/archive/${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=d9fe66bd15cf9c9c30bf45b97e5825c2101b518fc27c671c08a95798eec3c510
TERMUX_PKG_AUTO_UPDATE=true
# needs xxd
TERMUX_PKG_BUILD_DEPENDS="vim"
TERMUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_EXTRA_MAKE_ARGS="PREFIX=$TERMUX_PREFIX"
