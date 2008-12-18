ifneq ($(TARGET_SIMULATOR), true)

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
		main.c check.c boot.c fat.c dir.c fsutil.c

LOCAL_C_INCLUDES := external/fsck_msdos

LOCAL_CFLAGS := -O2 -g -W -Wall

LOCAL_MODULE := fsck_msdos
LOCAL_MODULE_TAGS := eng
LOCAL_SYSTEM_SHARED_LIBRARIES := libc

# disabled for now, until we understand fsck_msdos memory consumption.
# include $(BUILD_EXECUTABLE)

endif
