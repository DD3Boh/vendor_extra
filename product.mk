# I hate Safety Net
PRODUCT_PACKAGES += \
    ih8sn

DEVICE := $(subst lineage_,,$(TARGET_PRODUCT))
IH8SN_CONFIG_PATH := $(LOCAL_PATH)/prebuilt/etc/ih8sn_$(DEVICE).conf

ifneq ($(wildcard $(IH8SN_CONFIG_PATH)),)
PRODUCT_COPY_FILES += \
    $(IH8SN_CONFIG_PATH):/system/etc/ih8sn.conf
endif

ifneq ($(filter sake,$(DEVICE)),)
BOARD_SYSTEMIMAGE_PARTITION_RESERVED_SIZE := 200028160
BOARD_VENDORIMAGE_PARTITION_RESERVED_SIZE := 200028160

#PRODUCT_PACKAGES += init.sake.extra.rc
endif
