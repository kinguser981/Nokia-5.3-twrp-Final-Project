#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Release name
PRODUCT_RELEASE_NAME := CAP_sprout

# Inherit from those products. Most specific first.
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/embedded.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)
#$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit from CAP_sprout device
$(call inherit-product, device/hmd/CAP_sprout/device.mk)

PRODUCT_DEVICE := CAP_sprout
PRODUCT_NAME := omni_CAP_sprout
PRODUCT_BRAND := Nokia
PRODUCT_MODEL := Nokia 5.3
PRODUCT_MANUFACTURER := hmd

PRODUCT_GMS_CLIENTID_BASE := android-hmd

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="trinket-user 11 RKQ1.211130.001 1 release-keys"

BUILD_FINGERPRINT := Nokia/CaptainAmerica_00WW/CAP_sprout:11/RKQ1.211130.001/00WW_3_490:user/release-keys
