#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/amlogic/q6x

## Bootloader
TARGET_BOOTLOADER_BOARD_NAME := q6x

## Bluetooth (or lack thereof)
BOARD_HAVE_BLUETOOTH := false

## Kernel
TARGET_DTB_NAME := gxl_p281_1g gxl_p281_2g

## Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

## Wi-Fi
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_icomm
BOARD_WLAN_DEVICE := icomm
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_icomm
WIFI_HIDL_UNIFIED_SUPPLICANT_SERVICE_RC_ENTRY := true

## Common Tree
include device/amlogic/gx-common/BoardConfigCommon.mk
