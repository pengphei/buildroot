################################################################################
#
# yaffs2
#
################################################################################

YAFFS2_VERSION = unknown
YAFFS2_SOURCE = yaffs2-source.tar
YAFFS2_SITE = ftp://sourceforge.nchc.org.tw/f/fa/fatplus/
YAFFS2_LICENSE = GPLv2
YAFFS2_LICENSE_FILES = COPYING

define HOST_YAFFS2_BUILD_CMDS
	$(HOST_MAKE_ENV) $(MAKE) -C $(@D)/utils
endef

define HOST_YAFFS2_INSTALL_CMDS
	$(HOST_MAKE_ENV) cp $(@D)/utils/mkyaffs2image $(HOST_DIR)/usr/bin
endef

$(eval $(host-generic-package))
