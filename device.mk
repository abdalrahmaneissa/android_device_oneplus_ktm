#
# Copyright (C) 2026 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Touch features
$(call soong_config_set_bool,OPLUS_LINEAGE_TOUCH_HAL,ENABLE_GM,true)
$(call soong_config_set_bool,OPLUS_LINEAGE_TOUCH_HAL,ENABLE_HTPR,false)

# Vibrator
$(call soong_config_set_bool,OPLUS_LINEAGE_VIBRATOR_HAL,USE_EFFECT_STREAM,true)

# LiveDisplay
$(call soong_config_set_bool,OPLUS_LINEAGE_LIVEDISPLAY_HAL,ENABLE_AF,true)

# Power
$(call soong_config_set,qtipower,mode_ext_lib,power-ext-oplus)

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Alert slider (device-specific)
PRODUCT_PACKAGES += \
    KeyHandler \
    tri-state-key-calibrate

# Boot animation
TARGET_SCREEN_HEIGHT := 2800
TARGET_SCREEN_WIDTH := 1272

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 36

# Display
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/displayconfig/display_id_4630946916234099603.xml:$(TARGET_COPY_OUT_VENDOR)/etc/displayconfig/display_id_4630946916234099603.xml \
    $(LOCAL_PATH)/configs/displayconfig/display_id_4630946983774026899.xml:$(TARGET_COPY_OUT_VENDOR)/etc/displayconfig/display_id_4630946983774026899.xml \
    $(LOCAL_PATH)/configs/displayconfig/display_id_4630947039571902850.xml:$(TARGET_COPY_OUT_VENDOR)/etc/displayconfig/display_id_4630947039571902850.xml \
    $(LOCAL_PATH)/configs/displayconfig/display_id_4630947039571902851.xml:$(TARGET_COPY_OUT_VENDOR)/etc/displayconfig/display_id_4630947039571902851.xml \
    $(LOCAL_PATH)/configs/displayconfig/display_id_4630947075271898515.xml:$(TARGET_COPY_OUT_VENDOR)/etc/displayconfig/display_id_4630947075271898515.xml \
    $(LOCAL_PATH)/configs/display/advanced_sf_offsets.xml:$(TARGET_COPY_OUT_VENDOR)/etc/display/advanced_sf_offsets.xml

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/sku_sun/mixer_paths_sun_cdp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_sun/mixer_paths_sun_cdp.xml \
    $(LOCAL_PATH)/configs/audio/sku_sun/mixer_paths_sun_mtp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_sun/mixer_paths_sun_mtp.xml \
    $(LOCAL_PATH)/configs/audio/sku_sun/mixer_paths_sun_mtp_wsa883x_qmp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_sun/mixer_paths_sun_mtp_wsa883x_qmp.xml \
    $(LOCAL_PATH)/configs/audio/sku_sun/mixer_paths_sun_qrd.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_sun/mixer_paths_sun_qrd.xml \
    $(LOCAL_PATH)/configs/audio/sku_sun/mixer_paths_sun_qrd_sku2.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_sun/mixer_paths_sun_qrd_sku2.xml \
    $(LOCAL_PATH)/configs/audio/sku_sun/resourcemanager_sun_cdp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_sun/resourcemanager_sun_cdp.xml \
    $(LOCAL_PATH)/configs/audio/sku_sun/resourcemanager_sun_mtp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_sun/resourcemanager_sun_mtp.xml \
    $(LOCAL_PATH)/configs/audio/sku_sun/resourcemanager_sun_qrd.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_sun/resourcemanager_sun_qrd.xml \
    $(LOCAL_PATH)/configs/audio/sku_sun/resourcemanager_sun_qrd_sku2.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_sun/resourcemanager_sun_qrd_sku2.xml \
    $(LOCAL_PATH)/configs/audio/sku_sun/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_sun/audio_effects.xml

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-lineage

# Build properties
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/properties/build.prop:$(TARGET_COPY_OUT_ODM)/etc/build.prop

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# NFC
PRODUCT_PACKAGES += \
    android.hardware.nfc-service-tms \
    vendor.oplus.hardware.nfc_aidl-service \
    vendor.oplus.hardware.nfcExtns-service

# Inherit from the common OEM chipset
$(call inherit-product, device/oneplus/sm8750-common/common.mk)

# Inherit from the proprietary files
$(call inherit-product, vendor/oneplus/ktm/ktm-vendor.mk)