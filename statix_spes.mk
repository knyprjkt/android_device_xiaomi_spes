#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from spes/spesn device
$(call inherit-product, device/xiaomi/spes/device.mk)

# Inherit some common StatiXOS stuff.
$(call inherit-product, vendor/statix/config/common.mk)
$(call inherit-product, vendor/statix/config/gsm.mk)

# Include Pixel Launcher
INCLUDE_PIXEL_LAUNCHER := true


# Product Specifics
PRODUCT_NAME := statix_spes
PRODUCT_DEVICE := spes
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 11
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay-lineage

# Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="spes_global-user 13 TKQ1.221114.001 V816.0.11.0.TGKMIXM release-keys" \
    BuildFingerprint=Redmi/spes_global/spes:13/TKQ1.221114.001/V816.0.11.0.TGKMIXM:user/release-keys
