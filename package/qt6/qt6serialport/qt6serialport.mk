################################################################################
#
# qt6serialport
#
################################################################################

QT6SERIALPORT_VERSION = $(QT6_VERSION)
QT6SERIALPORT_SITE = $(QT6_SITE)
QT6SERIALPORT_SOURCE = qtserialport-$(QT6_SOURCE_TARBALL_PREFIX)-$(QT6SERIALPORT_VERSION).tar.xz
QT6SERIALPORT_INSTALL_STAGING = YES
QT6SERIALPORT_SUPPORTS_IN_SOURCE_BUILD = NO

QT6SERIALPORT_CMAKE_BACKEND = ninja

QT6SERIALPORT_LICENSE = \
	GPL-2.0+ or LGPL-3.0, \
	GPL-3.0 with exception (tools), \
	GFDL-1.3 (docs), \
	BSD-3-Clause

QT6SERIALPORT_LICENSE_FILES = \
	LICENSES/BSD-3-Clause.txt \
	LICENSES/GFDL-1.3-no-invariants-only.txt \
	LICENSES/GPL-2.0-only.txt \
	LICENSES/GPL-3.0-only.txt \
	LICENSES/LGPL-3.0-only.txt

QT6SERIALPORT_CONF_OPTS = \
	-DQT_HOST_PATH=$(HOST_DIR) \
	-DBUILD_WITH_PCH=OFF \
	-DQT_BUILD_EXAMPLES=OFF \
	-DQT_BUILD_TESTS=OFF

QT6SERIALPORT_DEPENDENCIES = \
	host-pkgconf \
	qt6base

$(eval $(cmake-package))
