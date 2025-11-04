#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from tssi device
$(call inherit-product, device/infinix/tssi/device.mk)

PRODUCT_DEVICE := tssi
PRODUCT_NAME := twrp_tssi
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := TSSI
PRODUCT_MANUFACTURER := infinix

PRODUCT_GMS_CLIENTID_BASE := android-transsion

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="tssi_arm64_infinix_go-user 15 AP3A.240905.015.A2 20964 release-keys"

BUILD_FINGERPRINT := Infinix/X6725-OP/Infinix-X6725:15/AP3A.240905.015.A2/151008:user/release-keys
