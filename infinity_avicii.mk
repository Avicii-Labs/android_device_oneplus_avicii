#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from avicii device
$(call inherit-product, device/oneplus/avicii/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/infinity/config/common_full_phone.mk)

PRODUCT_NAME := infinity_avicii
PRODUCT_DEVICE := avicii
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := AC2003

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

# Maintainer Name
INFINITY_MAINTAINER := "NoEscape.exe"

# Whether the device supports Fingerprint On Display
TARGET_HAS_UDFPS := true

# Whether Including Google Apps
WITH_GAPPS := true

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="Nord-user 12 RKQ1.211119.001 Q.202212051830:user release-keys" \
    BuildFingerprint=OnePlus/Nord/Nord:12/RKQ1.211119.001/Q.202212051830:user/release-keys \
    DeviceName=Nord \
    DeviceProduct=avicii \
    SystemName=Nord \
    SystemDevice=avicii
