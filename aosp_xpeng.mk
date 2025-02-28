#
# Copyright (C) 2022-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from xpeng device
$(call inherit-product, device/motorola/xpeng/device.mk)

# Inherit some common AOSP stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# PixelOS Flags
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTS_GOOGLE_RECORDER := true

PRODUCT_NAME := aosp_xpeng
PRODUCT_DEVICE := xpeng
PRODUCT_MANUFACTURER := motorola
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g200 5G

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=xpeng_retail \
    PRIVATE_BUILD_DESC="xpeng_g-user 12 S1RXS32.50-13-25 5fb68-c44485 release-keys"

BUILD_FINGERPRINT := motorola/xpeng_g/xpeng:12/S1RXS32.50-13-25/5fb68-c44485:user/release-keys
