TERMUX_PKG_HOMEPAGE=https://github.com/KhronosGroup/Vulkan-Utility-Libraries
TERMUX_PKG_DESCRIPTION="Utility Libraries for Vulkan"
TERMUX_PKG_LICENSE="Apache-2.0"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION="1.3.289"
TERMUX_PKG_SRCURL=https://github.com/KhronosGroup/Vulkan-Utility-Libraries/archive/refs/tags/v${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=6166182b6f279d85784651bf21a134a4016f429cd364bc587ece7b5af9af32d7
TERMUX_PKG_BUILD_DEPENDS="libc++, vulkan-headers (=${TERMUX_PKG_VERSION})"
TERMUX_PKG_NO_STATICSPLIT=true
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_UPDATE_TAG_TYPE="newest-tag"
TERMUX_PKG_UPDATE_VERSION_REGEXP="\d+.\d+.\d+"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DCMAKE_SYSTEM_NAME=Linux
"
