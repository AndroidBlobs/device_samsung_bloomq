# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from bloomq device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := samsung
PRODUCT_DEVICE := bloomq
PRODUCT_MANUFACTURER := samsung
PRODUCT_NAME := lineage_bloomq
PRODUCT_MODEL := SM-F700U1

PRODUCT_GMS_CLIENTID_BASE := android-samsung
TARGET_VENDOR := samsung
TARGET_VENDOR_PRODUCT_NAME := bloomq
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="bloomque-user 10 QP1A.190711.020 F700U1UEU1ATAK release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := samsung/bloomque/bloomq:10/QP1A.190711.020/F700U1UEU1ATAK:user/release-keys
