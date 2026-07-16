#
# Copyright (C) 2021-2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from sweet device.
$(call inherit-product, device/xiaomi/sweet/device.mk)

# Inherit some common LineageOS / Evolution-X stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Bootanimation
TARGET_INCLUDE_BOOT_ANIMATIONS := true
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 2400

# Face Unlock
TARGET_SUPPORTS_64_BIT_APPS := true
TARGET_SUPPORTS_GFU := false

# DeviceAsWebcam
TARGET_BUILD_DEVICE_AS_WEBCAM := true

# Enable blur
TARGET_ENABLE_BLUR := true

# BCR
TARGET_INCLUDE_BCR := true

# Other ROM feature flags
PERF_ANIM_OVERRIDE := true

# Targets
TARGET_INCLUDE_VIPERFX := true
TARGET_DISABLE_LINEAGE_SDK := false
TARGET_DISABLE_FASTBOOTD := false
TARGET_DISABLE_EPPE := false
TARGET_EXCLUDES_AUDIOFX := false
TARGET_HAS_UDFPS := false
TARGET_INCLUDE_GRAMOPHONE := false
TARGET_ENABLE_FP_OVERRIDE := false

# Device identifier.

PRODUCT_NAME := lineage_sweet
PRODUCT_DEVICE := sweet
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 10 Pro
PRODUCT_MANUFACTURER := Xiaomi

# GMS
ifeq ($(WITH_GMS),true)
TARGET_USES_MINI_GAPPS := false
TARGET_USES_PICO_GAPPS := false
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_MOSEY := false
TARGET_USES_MOSEY_NOPAUTH := false
endif
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Properties
PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="sweet_global-user 13 TKQ1.221013.002 V14.0.9.0.TKFMIXM release-keys" \
    BuildFingerprint=Redmi/sweet_global/sweet:13/TKQ1.221013.002/V14.0.9.0.TKFMIXM:user/release-keys
