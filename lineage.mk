## Specify phone tech before including full_phone

# Release name
PRODUCT_RELEASE_NAME := al732row

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lenovo/al732row/device_al732row.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := al732row
PRODUCT_NAME := lineage_al732row
PRODUCT_BRAND := lenovo
PRODUCT_MODEL := Vibe B
PRODUCT_MANUFACTURER := lenovo
