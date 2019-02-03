#
# Copyright (C) 2019 The Pixel Dust Project
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

# Inherit pixeldust vendor
$(call inherit-product, vendor/pixeldust/configs/pixeldust_phone.mk

# Inherit from mido device
$(call inherit-product, device/xiaomi/mido/device.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Include optional stuff (e.g. prebuilt apps)
include vendor/pixeldust/configs/system_optional.mk

# Include prebuilt Pixel Launcher
include vendor/pixeldust/configs/nexuslauncher.mk

# Google Apps
$(call inherit-product, vendor/googleapps/googleapps.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := mido
PRODUCT_NAME := pixeldust_mido
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 4
PRODUCT_MANUFACTURER := Xiaomi
TARGET_VENDOR := Xiaomi
BOARD_VENDOR := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_GAPPS_ARCH := arm64

#Apps
PRODUCT_PACKAGES += \
    Camera2 \
    PixelDustOTA
    
PRODUCT_PROPERTY_OVERRIDES += \
    ro.pixeldust.maintainer="z_id"

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="mido" \
    PRODUCT_NAME="mido" \
    PRIVATE_BUILD_DESC="mido-user 7.0 NRD90M V8.5.4.0.NCFMIED release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "xiaomi/mido/mido:7.0/NRD90M/V8.5.4.0.NCFMIED:user/release-keys"
