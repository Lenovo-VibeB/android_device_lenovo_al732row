LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
        dhcpclient.c \
        dhcpmsg.c \
        ifc_utils.c \
        packet.c

LOCAL_SHARED_LIBRARIES := \
        libcutils \
        liblog

LOCAL_MODULE := libnetutils

LOCAL_CFLAGS := -Werror
ifeq ($(BOARD_HAS_MTK_HARDWARE),true)
LOCAL_CFLAGS += -DMTK_HARDWARE -Wno-unused-parameter
endif

$(info TARGET_GLOBAL_CFLAGS: $(TARGET_GLOBAL_CFLAGS))
$(info LOCAL_CFLAGS: $(LOCAL_CFLAGS))

include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := dhcptool.c
LOCAL_SHARED_LIBRARIES := libnetutils
LOCAL_MODULE := dhcptool
LOCAL_MODULE_TAGS := debug
include $(BUILD_EXECUTABLE)