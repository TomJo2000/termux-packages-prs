TERMUX_PKG_HOMEPAGE=https://github.com/tsujan/FeatherPad
TERMUX_PKG_DESCRIPTION="Lightweight Qt Plain-Text Editor"
TERMUX_PKG_LICENSE="GPL-3.0"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION="1.6.2"
TERMUX_PKG_SRCURL=https://github.com/tsujan/FeatherPad/releases/download/V${TERMUX_PKG_VERSION}/FeatherPad-${TERMUX_PKG_VERSION}.tar.xz
TERMUX_PKG_SHA256=0c6ad7687d933e48f5e64047dacb4d4611155210ef1557874fb708e805a50daa
TERMUX_PKG_DEPENDS="hunspell, libc++, libx11, qt6-qtbase, qt6-qtsvg"
TERMUX_PKG_RECOMMENDS="hicolor-icon-theme"
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_UPDATE_VERSION_REGEXP="\d+\.\d+\.\d+"
