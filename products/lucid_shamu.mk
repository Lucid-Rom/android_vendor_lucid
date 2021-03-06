# Inherit AOSP device configuration for shamu.
$(call inherit-product, device/moto/shamu/aosp_shamu.mk)

# Inherit common product files.
include vendor/lucid/products/common.mk

# Setup device specific product configuration.
PRODUCT_NAME := lucid_shamu
PRODUCT_BRAND := google
PRODUCT_DEVICE := shamu
PRODUCT_MODEL := Nexus 6
PRODUCT_MANUFACTURER := motorola
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=shamu BUILD_FINGERPRINT="google/shamu/shamu:5.1.1/LMY48B/1863243:user/release-keys" PRIVATE_BUILD_DESC="shamu-user 5.1.1 LMY48B 1863243 release-keys"
