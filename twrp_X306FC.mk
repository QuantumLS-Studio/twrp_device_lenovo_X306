#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from common AOSP config
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit some common TWRP stuff.
# For PitchBlack use vendor/pb/config/common.mk
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/lenovo/X306FC/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := twrp_X306FC
PRODUCT_DEVICE := X306FC
PRODUCT_MANUFACTURER := LENOVO
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Tab M10HD 2nd

PRODUCT_GMS_CLIENTID_BASE := android-lenovo

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=X306FC \
    PRIVATE_BUILD_DESC="full_X306FC-user 10 QP1A.190711.020 TB-X306X_U release-keys"

BUILD_FINGERPRINT := Lenovo/LenovoTB-X306X_EEA/X306X:10/QP1A.190711.020/TB-X306X_USR_S120712_2303010505_V9.48_BMP_ROW:user/release-keys
