# Boot animation
TARGET_SCREEN_HEIGHT := 3120
TARGET_SCREEN_WIDTH := 1440
TARGET_BOOT_ANIMATION_RES := 1440

$(call inherit-product, vendor/ancient/config/common_full_phone.mk)

# Official-ify
ANCIENT_OFFICIAL=true

TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_USES_BLUR := true

ANCIENT_GAPPS := true
TARGET_INCLUDE_PIXEL_CHARGER := true
PIXEL_STUFF := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_SUPPORTS_CALL_RECORDING := true

# Inherit device configuration
$(call inherit-product, device/google/raviole/aosp_raven_64.mk)

$(call inherit-product-if-exists, vendor/google/pixelparts/pixelparts.mk)

# Extra packages
PRODUCT_PACKAGES += \
    vendor.lineage.powershare@1.0-service.gs101
    
## Device identifier. This must come after all inclusions
PRODUCT_NAME := ancient_raven
PRODUCT_MODEL := Pixel 6 Pro
PRODUCT_BRAND := google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=raven \
    PRIVATE_BUILD_DESC="raven-user 13 TP1A.220905.004 8927612 release-keys"

BUILD_FINGERPRINT := $(PRODUCT_OVERRIDE_FINGEPRINT)
