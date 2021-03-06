# Boot animation
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 1920

# Inherit device configuration
$(call inherit-product, device/leeco/s2/full_s2.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/aosip/config/common_full_phone.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := s2
PRODUCT_NAME := aosip_s2
PRODUCT_BRAND := LeEco
PRODUCT_MANUFACTURER := LeMobile

PRODUCT_GMS_CLIENTID_BASE := android-leeco

TARGET_VENDOR_PRODUCT_NAME := Le2_CN
TARGET_VENDOR_DEVICE_NAME := le_s2
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=le_s2 PRODUCT_NAME=Le2_CN

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=Letv/Le2_WW/le_s2_ww:6.0.1/IIXOSOP5801910121S/44:user/release-keys \
    PRIVATE_BUILD_DESC="s2-user 6.0.1 IIXOSOP5801910121S 44 release-keys"

PRODUCT_SYSTEM_PROPERTY_BLACKLIST += ro.product.model

# Release name
PRODUCT_RELEASE_NAME := s2
