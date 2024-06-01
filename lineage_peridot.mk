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

# Inherit from peridot device
$(call inherit-product, device/xiaomi/peridot/device.mk)

# Device identifier
PRODUCT_NAME := lineage_peridot
PRODUCT_DEVICE := peridot
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Turbo 3
PRODUCT_MANUFACTURER := xiaomi

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="missi_phone_cn_only64-user 14 UKQ1.240116.001 V816.0.13.0.UNPCNXM release-keys"

# Fingerprint
BUILD_FINGERPRINT := Android/missi_phone_cn_only64/missi:14/UKQ1.240116.001/V816.0.13.0.UNPCNXM:user/release-keys
