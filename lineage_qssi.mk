#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from qssi device
$(call inherit-product, device/samsung/qssi/device.mk)

PRODUCT_DEVICE := qssi
PRODUCT_NAME := lineage_qssi
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-X210
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="gta9pwifixx-user 14 UP1A.231005.007 X210XXS3CXH1 release-keys"

BUILD_FINGERPRINT := samsung/gta9pwifixx/qssi:14/UP1A.231005.007/X210XXS3CXH1:user/release-keys
