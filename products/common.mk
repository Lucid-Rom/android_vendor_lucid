# Generic product
PRODUCT_NAME := lucid
PRODUCT_BRAND := lucid
PRODUCT_DEVICE := generic

PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false \
    drm.service.enabled=true \
    ro.facelock.black_timeout=400 \
    ro.facelock.det_timeout=1500 \
    ro.facelock.rec_timeout=2500 \
    ro.facelock.lively_timeout=2500 \
    ro.facelock.est_max_time=600 \
    ro.facelock.use_intro_anim=false \
    net.tethering.noprovisioning=true \
    persist.sys.dun.override=0 \
    ro.build.selinux=1 \
    ro.adb.secure=1 \
    ro.config.vc_music_vol_steps=30 \
    ro.setupwizard.network_required=false \
    ro.setupwizard.gservices_delay=-1 \
    dalvik.vm.image-dex2oat-filter=everything \
    dalvik.vm.dex2oat-filter=everything
    
# Include overlays
PRODUCT_PACKAGE_OVERLAYS += vendor/lucid/overlay/common
PRODUCT_PACKAGE_OVERLAYS += vendor/lucid/overlay/$(TARGET_PRODUCT)

# Launcher3 supported devices
PRODUCT_PACKAGES += \
    Launcher3

# Build SimToolKit
PRODUCT_PACKAGES += \
    Stk

# Boot animation
PRODUCT_COPY_FILES += \
    vendor/lucid/prebuilt/shamu/system/media/bootanimation.zip:system/media/bootanimation.zip

# Latin IME lib - gesture typing
PRODUCT_COPY_FILES += \
    vendor/lucid/prebuilt/common/lib/libjni_latinime.so:system/lib/libjni_latinime.so

# APN list
PRODUCT_COPY_FILES += \
    vendor/lucid/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml
    
# UKM for Vindicator
PRODUCT_COPY_FILES += \
    vendor/lucid/prebuilt/kernel/data/UKM.zip:system/addon.d/UKM.zip

# Backuptool support
PRODUCT_COPY_FILES += \
    vendor/lucid/prebuilt/common/addon.d/50-lucid.sh:system/addon.d/50-lucid.sh \
    vendor/lucid/prebuilt/common/bin/backuptool.functions:system/bin/backuptool.functions \
    vendor/lucid/prebuilt/common/bin/backuptool.sh:system/bin/backuptool.sh

# SuperSU
PRODUCT_COPY_FILES += \
    vendor/lucid/prebuilt/common/etc/UPDATE-SuperSU.zip:system/addon.d/UPDATE-SuperSU.zip \
    vendor/lucid/prebuilt/common/etc/init.d/99SuperSUDaemon:system/etc/init.d/99SuperSUDaemon

LOCAL_PATH := $(call vendor/lucid/)
include $(call all-makefiles-under,$(LOCAL_PATH))
