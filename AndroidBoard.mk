LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

# include the non-open-source counterpart to this file
-include vendor/xiaomi/leo/AndroidBoardVendor.mk

# include include kernel/xiaomi/libra-l-oss/AndroidKernel.mk

# Create symbolic links
$(shell mkdir -p $(TARGET_OUT_ETC)/firmware/wlan/qca_cld; \
        ln -sf /system/etc/wifi/WCNSS_qcom_cfg.ini \
        $(TARGET_OUT_ETC)/firmware/wlan/qca_cld/WCNSS_qcom_cfg.ini; \
        ln -sf /data/misc/wifi/test.bin \
        $(TARGET_OUT_ETC)/firmware/wlan/qca_cld/wlan_mac.bin )
