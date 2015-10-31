################################################################################
#
# Build the yaffs2img root filesystem image
#
################################################################################

ROOTFS_YAFFS2IMG_DEPENDENCIES = host-yaffs2

define ROOTFS_YAFFS2IMG_CMD
	$(HOST_DIR)/usr/bin/mkyaffs2image $(TARGET_DIR) $@
endef

$(eval $(call ROOTFS_TARGET,yaffs2img))
