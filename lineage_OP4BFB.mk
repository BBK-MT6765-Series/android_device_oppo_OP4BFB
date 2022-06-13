#
# Copyright (C) 2021 The Android Open Source Project 
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

#
# All components inherited here go to system_ext image
#
$(call inherit-product, $(SRC_TARGET_DIR)/product/handheld_system_ext.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony_system_ext.mk)

# Inherit some common LineageOS stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from OP4BFB device makefile
$(call inherit-product, device/oppo/OP4BFB/device.mk)

# Dimen
TARGET_SCREEN_HEIGHT := 1520
TARGET_SCREEN_WIDTH := 720

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := OP4BFB
PRODUCT_NAME := lineage_OP4BFB
PRODUCT_BRAND := OPPO
PRODUCT_MODEL := CPH2083
PRODUCT_MANUFACTURER := OPPO
PRODUCT_RELEASE_NAME := OPPO A12

TARGET_BOOT_ANIMATION_RES := 720

# Fingerprint
PRODUCT_GMS_CLIENTID_BASE := android-oppo

TARGET_VENDOR_PRODUCT_NAME := CPH2083

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="CPH2083-user 9 PPR1.180610.011 1572000930 release-keys"

BUILD_FINGERPRINT := OPPO/CPH2083/OP4BFB:9/PPR1.180610.011/1572000930:user/release-keys
