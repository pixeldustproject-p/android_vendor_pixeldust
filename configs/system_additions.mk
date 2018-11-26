# Copyright (C) 2018 The Pixel Dust Project
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

# Extra Packages
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    Launcher3 \
    SubstratumSignature

# WeatherProvider
PRODUCT_PACKAGES += \
    WeatherProvider

# CAF Telephony packages
PRODUCT_PACKAGES += \
    ims-ext-common \
    telephony-ext

PRODUCT_BOOT_JARS += \
    telephony-ext

PRODUCT_COPY_FILES += \
    vendor/pixeldust/prebuilt/common/etc/permissions/com.android.providers.weather.xml:system/etc/permissions/com.android.providers.weather.xml \
    vendor/pixeldust/prebuilt/common/etc/default-permissions/com.android.providers.weather.xml:system/etc/default-permissions/com.android.providers.weather.xml \
    vendor/pixeldust/prebuilt/common/etc/permissions/org.pixelexperience.ambient.play.xml:system/etc/permissions/org.pixelexperience.ambient.play.xml

# Ambient Play
PRODUCT_PACKAGES += \
    AmbientPlayHistoryProvider \
    AmbientPlayProvider

ifeq ($(AB_OTA_UPDATER),true)
PRODUCT_COPY_FILES += \
    vendor/pixeldust/prebuilt/bin/backuptool_ab.sh:system/bin/backuptool_ab.sh \
    vendor/pixeldust/prebuilt/bin/backuptool_ab.functions:system/bin/backuptool_ab.functions \
    vendor/pixeldust/prebuilt/bin/backuptool_postinstall.sh:system/bin/backuptool_postinstall.sh
endif

# Theme Packages
PRODUCT_PACKAGES += \
    SystemDarkTheme \
    SettingsDarkTheme \
    SystemUIDarkTheme \
    ContactsThemeDark \
    DialerThemeDark \
    FilesThemeDark \
    GBoardThemeDark \
    SystemBlackTheme \
    SettingsBlackTheme \
    SystemUIBlackTheme \
    ContactsThemeBlack \
    DialerThemeBlack \
    FilesThemeBlack \
    GBoardThemeBlack \
    SystemChocolateTheme \
    SettingsChocolateTheme \
    SystemUIChocolateTheme \
    ContactsThemeChocolate \
    DialerThemeChocolate \
    FilesThemeChocolate \
    GBoardThemeChocolate \
    WellbeingThemeChocolate \
    SettingsShishuNightsTheme \
    SystemUIShishuNightsTheme \
    SystemShishuNightsTheme \
    ContactsThemeShishuNights \
    DialerThemeShishuNights \
    FilesThemeShishuNights \
    GBoardThemeShishuNights \
    GMSThemeShishuNights \
    WellbeingThemeShishuNights \
    SettingsShishuCosmosTheme \
    SystemUIShishuCosmosTheme \
    SystemShishuCosmosTheme \
    ContactsThemeShishuCosmos \
    DialerThemeShishuCosmos \
    FilesThemeShishuCosmos \
    GBoardThemeShishuCosmos \
    GMSThemeShishuCosmos \
    WellbeingThemeShishuCosmos

# Overlays
PRODUCT_PACKAGES += \
    Amber \
    Black \
    Blue \
    BlueGrey \
    Brown \
    CandyRed \
    Cyan \
    DeepOrange \
    DeepPurple \
    ExtendedGreen \
    Green \
    Grey \
    Indigo \
    JadeGreen \
    LightBlue \
    LightGreen \
    Lime \
    Orange \
    PaleBlue \
    PaleRed \
    Pink \
    Purple \
    Red \
    Teal \
    Yellow \
    White \
    UserOne \
    UserTwo \
    UserThree \
    UserFour \
    UserFive \
    UserSix \
    UserSeven \
    ObfusBleu \
    NotImpPurple \
    Holillusion \
    MoveMint \
    FootprintPurple \
    BubblegumPink \
    FrenchBleu \
    Stock \
    ManiaAmber \
    SeasideMint \
    DreamyPurple \
    SpookedPurple \
    HeirloomBleu \
    TruFilPink \
    WarmthOrange \
    ColdBleu \
    DiffDayGreen \
    DuskPurple \
    BurningRed \
    HazedPink \
    ColdYellow \
    NewHouseOrange \
    IllusionsPurple

# QS tile styles
PRODUCT_PACKAGES += \
    QStileCircleTrim \
    QStileDefault \
    QStileDualToneCircle \
    QStileOreo \
    QStileOreoCircleTrim \
    QStileOreoSquircleTrim \
    QStileSquircleTrim \
    QStileMountain \
    QStileCircleDualTone \
    QStileCircleGradient \
    QStileDottedCircle \
    QStileNinja \
    QStilePokesign \
    QStileWavey

# Fonts
PRODUCT_PACKAGES += \
    PixelDust-Fonts

