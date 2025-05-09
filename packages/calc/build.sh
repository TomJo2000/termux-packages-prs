TERMUX_PKG_HOMEPAGE=http://www.isthe.com/chongo/tech/comp/calc/
TERMUX_PKG_DESCRIPTION="Arbitrary precision console calculator"
TERMUX_PKG_LICENSE="LGPL-2.1"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION="2.15.1.1"
TERMUX_PKG_SRCURL=https://github.com/lcn2/calc/releases/download/v$TERMUX_PKG_VERSION/calc-$TERMUX_PKG_VERSION.tar.bz2
TERMUX_PKG_SHA256=a2d6cf86cd825cd1ecf7ca1ce3a37cf7c7807250ae28d54bc7668e27bde6209c
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_DEPENDS="ncurses, readline"
TERMUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_EXTRA_MAKE_ARGS="LONG_BITS=$TERMUX_ARCH_BITS"
TERMUX_PKG_MAKE_PROCESSES=1
