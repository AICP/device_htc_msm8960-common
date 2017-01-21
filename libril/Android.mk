# Copyright 2006 The Android Open Source Project

ifeq ($(BOARD_PROVIDES_LIBRIL),true)
ifeq ($(TARGET_BOARD_PLATFORM),msm8960)
ifeq ($(BOARD_VENDOR),htc)


LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
    ril.cpp \
    ril_event.cpp\
    RilSocket.cpp \
    RilSapSocket.cpp \

LOCAL_SHARED_LIBRARIES := \
    liblog \
    libutils \
    libbinder \
    libcutils \
    libhardware_legacy \
    librilutils \

LOCAL_STATIC_LIBRARIES := \
    libprotobuf-c-nano-enable_malloc \

#LOCAL_CFLAGS := -DANDROID_MULTI_SIM -DDSDA_RILD1

ifeq ($(SIM_COUNT), 2)
    LOCAL_CFLAGS += -DANDROID_SIM_COUNT_2
endif

ifeq ($(BOARD_RIL_FIVE_SEARCH_RESPONSES),true)
    LOCAL_CFLAGS += -DRIL_FIVE_SEARCH_RESPONSES
endif

LOCAL_C_INCLUDES += external/nanopb-c
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../include
LOCAL_EXPORT_C_INCLUDE_DIRS := $(LOCAL_PATH)/../include

LOCAL_MODULE:= libril
LOCAL_CLANG := false

include $(BUILD_SHARED_LIBRARY)

endif # BOARD_VENDOR
endif # TARGET_BOARD_PLATFORM
endif # BOARD_PROVIDES_LIBRIL
