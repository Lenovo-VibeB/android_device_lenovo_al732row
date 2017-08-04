# Release name
PRODUCT_RELEASE_NAME := al732row

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

# Inherit device configuration
$(call inherit-product, device/lenovo/al732row/device_al732row.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := al732row
PRODUCT_NAME := lineage_al732row
PRODUCT_BRAND := lenovo
PRODUCT_MODEL := Lenovo Vibe B
PRODUCT_MANUFACTURER := lenovo

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=Lenovo/A2016b30/A2016b30:6.0/MRA58K/A2016b30_S156_1608241245.1608241245:user/release-keys \
    PRIVATE_BUILD_DESC="hq6735m_35u_b1a_m-user 6.0 MRA58K 1472015786 release-keys"
