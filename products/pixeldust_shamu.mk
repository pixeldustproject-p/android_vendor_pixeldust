#
# Copyright 2014 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Sample: This is where we'd set a backup provider if we had one
# $(call inherit-product, device/sample/products/backup_overlay.mk)

# Boot Animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440

# Inherit pixeldust vendor
$(call inherit-product, vendor/pixeldust/configs/pixeldust_phone.mk)

# Inherit AOSP device configuration for shamu.
$(call inherit-product, device/moto/shamu/aosp_shamu.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/moto/shamu/device.mk)
$(call inherit-product, vendor/moto/shamu/device-vendor.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Include optional stuff (e.g. prebuilt apps)
include vendor/pixeldust/configs/system_optional.mk

# Include prebuilt Pixel Launcher
include vendor/pixeldust/configs/nexuslauncher.mk

# Google Apps
$(call inherit-product, vendor/googleapps/basic-gapps.mk)

PRODUCT_NAME := pixeldust_shamu
PRODUCT_DEVICE := shamu
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 6
PRODUCT_MANUFACTURER := motorola
PRODUCT_RESTRICT_VENDOR_FILES := false

# Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=shamu \
    PRIVATE_BUILD_DESC="shamu-user 7.0 NBD91U 3408911 release-keys"

BUILD_FINGERPRINT=google/shamu/shamu:7.0/NBD91U/3408911:user/release-keys

#Apps
PRODUCT_PACKAGES += \
    Camera2 \
    Gallery2 \
    Music \
    Calendar \
    DeskClock \
    Email

PRODUCT_PROPERTY_OVERRIDES += \
    ro.pixeldust.maintainer="nitin1438"

# Use SDCLANG
TARGET_USE_SDCLANG := true 

