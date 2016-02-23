# Release name
PRODUCT_RELEASE_NAME := kccat6

$(call inherit-product, build/target/product/embedded.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := kccat6
PRODUCT_NAME := omni_kccat6
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G901F
PRODUCT_MANUFACTURER := samsung
