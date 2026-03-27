#
# Copyright (C) 2026 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Include the common OEM chipset BoardConfig.
include device/oneplus/sm8750-common/BoardConfigCommon.mk

# Include the proprietary files BoardConfig.
include vendor/oneplus/ktm/BoardConfigVendor.mk

# Device tree path
DEVICE_PATH := device/oneplus/ktm

# Assert
TARGET_OTA_ASSERT_DEVICE := OP6113L1,PLQ110

# Partitions
BOARD_SUPER_PARTITION_SIZE := 13329498112

# Display
TARGET_SCREEN_DENSITY := 480

# Kernel
TARGET_KERNEL_ADDITIONAL_FLAGS += CONFIG_KTM_DTB=y

# Properties
TARGET_ODM_PROP += $(DEVICE_PATH)/properties/odm.prop
TARGET_SYSTEM_EXT_PROP += $(DEVICE_PATH)/system_ext.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/properties/vendor.prop

# Recovery
TARGET_RECOVERY_UI_MARGIN_HEIGHT := 98


# VINTF
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE += $(DEVICE_PATH)/vintf/framework_compatibility_matrix.xml