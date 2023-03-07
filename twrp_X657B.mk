#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from X657B device
$(call inherit-product, device/infinix/X657B/device.mk)

PRODUCT_DEVICE := X657B
PRODUCT_NAME := twrp_X657B
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Infinix Smart 5
PRODUCT_MANUFACTURER := infinix

PRODUCT_GMS_CLIENTID_BASE := android-infinix

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_x657b_h6117-user 11 RP1A.200720.011 164723 release-keys"

BUILD_FINGERPRINT := Infinix/X657B-OP-S2/Infinix-X657B:11/RP1A.200720.011/221121V777:user/release-keys
