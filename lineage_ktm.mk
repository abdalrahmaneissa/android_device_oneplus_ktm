#
# Copyright (C) 2026 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from ktm device
$(call inherit-product, device/oneplus/ktm/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device Products
PRODUCT_NAME := lineage_ktm
PRODUCT_DEVICE := ktm
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := OnePlus Ace 6
PRODUCT_GMS_CLIENTID_BASE := android-oneplus

# Device Fingerprint
BUILD_FINGERPRINT := OnePlus/PLQ110/OP6113L1:16/BP2A.250605.015/B.eOfca5_14c9b8f_14880b0:user/release-keys
PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="qssi-user 16 BP2A.250605.015 1772764121986 release-keys" \
    DeviceName=OP6113L1 \
    DeviceProduct=PLQ110 \
    SystemDevice=OP6113L1 \
    SystemName=PLQ110
