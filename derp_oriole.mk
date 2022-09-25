# Boot animation
TARGET_SCREEN_HEIGHT := 2280
TARGET_SCREEN_WIDTH := 1080
TARGET_BOOT_ANIMATION_RES := 1080

# Inherit some common DerpFest stuff.
$(call inherit-product, vendor/derp/config/common_full_phone.mk)

DERP_BUILDTYPE := Official
EXTRA_UDFPS_ANIMATIONS := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_USES_BLUR := true

# Inherit device configuration
$(call inherit-product, device/google/raviole/aosp_oriole_64.mk)

$(call inherit-product-if-exists, vendor/google/pixelparts/pixelparts.mk)

# Extra packages
PRODUCT_PACKAGES += \
    vendor.lineage.powershare@1.0-service.gs101

# Properties
TARGET_SYSTEM_PROP := device/google/raviole/system.prop
    
## Device identifier. This must come after all inclusions
PRODUCT_NAME := derp_oriole
PRODUCT_MODEL := Pixel 6
PRODUCT_BRAND := google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=oriole \
    PRIVATE_BUILD_DESC="oriole-user 13 TP1A.220905.004 8927612 release-keys"

BUILD_FINGERPRINT := $(PRODUCT_OVERRIDE_FINGERPRINT)
