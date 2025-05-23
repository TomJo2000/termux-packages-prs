TERMUX_PKG_HOMEPAGE=https://github.com/termux/termux-core-package
TERMUX_PKG_DESCRIPTION="Utils and libraries for Termux core"
TERMUX_PKG_LICENSE="MIT"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=0.4.0
TERMUX_PKG_SRCURL=https://github.com/termux/termux-core-package/archive/refs/tags/v${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=af6299f341292ca98d1748a06e342fe29fbc9eb485a7c1ba5c9f91ba72b4f44a
TERMUX_PKG_ESSENTIAL=true
TERMUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_EXTRA_MAKE_ARGS="TERMUX_CORE_PKG__VERSION=${TERMUX_PKG_VERSION} TERMUX_CORE_PKG__ARCH=${TERMUX_ARCH} \
TERMUX__NAME=${TERMUX__NAME} TERMUX__LNAME=${TERMUX__LNAME} \
TERMUX__REPOS_HOST_ORG_NAME=${TERMUX__REPOS_HOST_ORG_NAME} TERMUX__REPOS_HOST_ORG_URL=${TERMUX__REPOS_HOST_ORG_URL} \
TERMUX_APP__NAME=${TERMUX_APP__NAME} \
TERMUX_APP__PACKAGE_NAME=${TERMUX_APP__PACKAGE_NAME} TERMUX_APP__DATA_DIR=${TERMUX_APP__DATA_DIR} \
TERMUX__ROOTFS=${TERMUX__ROOTFS} TERMUX__HOME=${TERMUX__HOME} TERMUX__PREFIX=${TERMUX__PREFIX} \
TERMUX__PREFIX__TMP_DIR=${TERMUX__PREFIX__TMP_DIR} \
TERMUX_ENV__S_ROOT=${TERMUX_ENV__S_ROOT} \
TERMUX_ENV__SS_TERMUX=${TERMUX_ENV__SS_TERMUX} TERMUX_ENV__S_TERMUX=${TERMUX_ENV__S_TERMUX} \
TERMUX_ENV__SS_TERMUX_APP=${TERMUX_ENV__SS_TERMUX_APP} TERMUX_ENV__S_TERMUX_APP=${TERMUX_ENV__S_TERMUX_APP} \
TERMUX_ENV__SS_TERMUX_API_APP=${TERMUX_ENV__SS_TERMUX_API_APP} TERMUX_ENV__S_TERMUX_API_APP=${TERMUX_ENV__S_TERMUX_API_APP} \
TERMUX_ENV__SS_TERMUX_ROOTFS=${TERMUX_ENV__SS_TERMUX_ROOTFS} TERMUX_ENV__S_TERMUX_ROOTFS=${TERMUX_ENV__S_TERMUX_ROOTFS} \
TERMUX_ENV__SS_TERMUX_CORE=${TERMUX_ENV__SS_TERMUX_CORE} TERMUX_ENV__S_TERMUX_CORE=${TERMUX_ENV__S_TERMUX_CORE} \
TERMUX_ENV__SS_TERMUX_CORE__TESTS=${TERMUX_ENV__SS_TERMUX_CORE__TESTS} TERMUX_ENV__S_TERMUX_CORE__TESTS=${TERMUX_ENV__S_TERMUX_CORE__TESTS} \
TERMUX_ENV__SS_TERMUX_EXEC__TESTS=${TERMUX_ENV__SS_TERMUX_EXEC__TESTS} TERMUX_ENV__S_TERMUX_EXEC__TESTS=${TERMUX_ENV__S_TERMUX_EXEC__TESTS} \
TERMUX_APP__NAMESPACE=${TERMUX_APP__NAMESPACE} \
TERMUX_APP__SHELL_API__SHELL_API_ACTIVITY__CLASS_NAME=${TERMUX_APP__SHELL_API__SHELL_API_ACTIVITY__CLASS_NAME} \
TERMUX_APP__SHELL_API__SHELL_API_SERVICE__CLASS_NAME=${TERMUX_APP__SHELL_API__SHELL_API_SERVICE__CLASS_NAME} \
TERMUX_PKGS__REPO_NAME=${TERMUX_PKGS__REPO_NAME} TERMUX_PKGS__REPO_URL=${TERMUX_PKGS__REPO_URL} \
TERMUX_PKGS__BUILD__REPO_ROOT_DIR=${TERMUX_PKGS__BUILD__REPO_ROOT_DIR} \
TERMUX_CORE_PKG__REPO_NAME=${TERMUX_CORE_PKG__REPO_NAME} TERMUX_CORE_PKG__REPO_URL=${TERMUX_CORE_PKG__REPO_URL}"

termux_step_install_license() {
	mkdir -p "$TERMUX_PREFIX/share/doc/$TERMUX_PKG_NAME/licenses"
	cp -af "$TERMUX_PKG_SRCDIR/LICENSE" "$TERMUX_PREFIX/share/doc/$TERMUX_PKG_NAME/copyright"
	cp -af "$TERMUX_PKG_SRCDIR/licenses/"* "$TERMUX_PREFIX/share/doc/$TERMUX_PKG_NAME/licenses/"
}

termux_step_strip_elf_symbols() {
	termux_step_strip_elf_symbols__from_paths . \
	\( \
		\( -path "./bin/*" -o -path "./lib/*" -o -path "./libexec/*" \) -a \
		\( ! -path "./libexec/installed-tests/termux-core/*" \) \
	\)
}
