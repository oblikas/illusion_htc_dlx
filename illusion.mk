#i# Specify phone tech before including full_phon
$(call inherit-product, vendor/illusion/config/cdma.mk)

# Fix?
$(call inherit-product, vendor/illusion/config/common.mk)

# Release name
PRODUCT_RELEASE_NAME := dlx

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Inherit some common Illusion stuff.
$(call inherit-product, vendor/illusion/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/illusion/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/htc/dlx/full_dlx.mk)

# Inherit led flash settings
$(call inherit-product, vendor/illusion/config/common_ledflash.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := dlx
PRODUCT_NAME := illusion_dlx
PRODUCT_BRAND := Verizon
PRODUCT_MODEL := HTC6435LVW
PRODUCT_MANUFACTURER := HTC

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=dlx BUILD_FINGERPRINT=verizon_wwe/dlx/dlx:4.1.1/JRO03C/147796.1:user/release-keys PRIVATE_BUILD_DESC="2.06.605.1 CL147796 release-keys"

#hybrid
PRODUCT_COPY_FILES += \
vendor/illusion/prebuilt/hybrid_m7_no_nav.conf:system/etc/beerbong/properties.conf
