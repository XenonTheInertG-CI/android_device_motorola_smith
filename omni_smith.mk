#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from smith device
$(call inherit-product, device/motorola/smith/device.mk)

PRODUCT_DEVICE := smith
PRODUCT_NAME := omni_smith
PRODUCT_BRAND := motorola
PRODUCT_MODEL := motorola razr (2020)
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="smith_retail-user 11 RPS31.Q1-40-17-12 21bf4c release-keys"

BUILD_FINGERPRINT := motorola/smith_retail/smith:11/RPS31.Q1-40-17-12/21bf4c:user/release-keys
