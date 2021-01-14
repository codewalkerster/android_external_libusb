LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE:= libusb

LOCAL_SRC_FILES := \
				libusb/core.c \
				libusb/descriptor.c \
				libusb/hotplug.c \
				libusb/io.c \
				libusb/sync.c \
				libusb/strerror.c \
				libusb/os/linux_usbfs.c \
				libusb/os/poll_posix.c \
				libusb/os/threads_posix.c \
				libusb/os/linux_netlink.c

LOCAL_MODULE_TAGS := optional

LOCAL_C_INCLUDES := \
					$(LOCAL_PATH)/libusb \
					$(LOCAL_PATH)/libusb/os \
					$(LOCAL_PATH)/android \

LOCAL_SHARED_LIBRARIES += libc liblog

#LOCAL_CFLAGS += -DOS_LINUX

LOCAL_PRELINK_MODULE := false

include $(BUILD_SHARED_LIBRARY)
