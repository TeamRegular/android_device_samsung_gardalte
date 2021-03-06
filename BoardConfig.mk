#
# Copyright (C) 2014 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

BOARD_VENDOR := samsung

# Include path
TARGET_SPECIFIC_HEADER_PATH := device/samsung/gardalte/include

# Assert
TARGET_OTA_ASSERT_DEVICE := gardalte

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := universal3470
TARGET_NO_BOOTLOADER := true

# Platform
TARGET_BOARD_PLATFORM := exynos3
TARGET_SOC := exynos3470

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := cortex-a7

# Kernel
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048
TARGET_KERNEL_CONFIG := cyanogenmod_gardalte_defconfig
TARGET_KERNEL_SOURCE := kernel/samsung/exynos3470

# Filesystems
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 8388608
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1468006400
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5679087616
BOARD_FLASH_BLOCK_SIZE := 4096

# Recovery
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_RECOVERY_FSTAB := device/samsung/gardalte/rootdir/etc/fstab.universal3470
TARGET_RECOVERY_PIXEL_FORMAT := BGRA_8888
TARGET_USERIMAGES_USE_EXT4 := true

# Disable initlogo
TARGET_NO_INITLOGO := true

# Audio
BOARD_USES_LIBMEDIA_WITH_AUDIOPARAMETER := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUEDROID_VENDOR_CONF := device/samsung/gardalte/bluetooth/libbt_vndcfg.txt
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/gardalte/bluetooth

# Camera
COMMON_GLOBAL_CFLAGS += -DDISABLE_HW_ID_MATCH_CHECK
COMMON_GLOBAL_CFLAGS += -DSAMSUNG_CAMERA_HARDWARE
COMMON_GLOBAL_CFLAGS += -DSAMSUNG_DVFS

# Graphics
USE_OPENGL_RENDERER := true
BOARD_EGL_CFG := device/samsung/gardalte/egl/egl.cfg
BOARD_EGL_WORKAROUND_BUG_10194508 := true
BOARD_USE_BGRA_8888 := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 5

# Wifi
BOARD_HAVE_SAMSUNG_WIFI          := true
BOARD_WLAN_DEVICE                := bcmdhd
WIFI_BAND                        := 802_11_ABG
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_bcmdhd
WIFI_DRIVER_MODULE_NAME          := "dhd"
WIFI_DRIVER_FW_PATH_PARAM        := "/sys/module/dhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA          := "/system/etc/wifi/bcmdhd_sta.bin"
WIFI_DRIVER_FW_PATH_AP           := "/system/etc/wifi/bcmdhd_apsta.bin"
WIFI_DRIVER_FW_PATH_P2P          := "/system/etc/wifi/bcmdhd_p2p.bin"

# Webkit
ENABLE_WEBGL := true

# PowerHAL
TARGET_POWERHAL_VARIANT := universal3470

# Charging mode
BOARD_BATTERY_DEVICE_NAME := battery

# CMHW
BOARD_HARDWARE_CLASS += hardware/samsung/cmhw

# TWRP
DEVICE_RESOLUTION := 480x800
RECOVERY_SDCARD_ON_DATA := true
BOARD_HAS_NO_REAL_SDCARD := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_INTERNAL_STORAGE_PATH := "/data/media/0"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_MTP_DEVICE := "/dev/usb_mtp_gadget"
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true

# Vendor Init
TARGET_UNIFIED_DEVICE := true
TARGET_INIT_VENDOR_LIB := libinit_gardalte
TARGET_LIBINIT_DEFINES_FILE := device/samsung/gardalte/init/init_gardalte.c

# SELinux
#BOARD_SEPOLICY_DIRS += \
#    device/samsung/gardalte/sepolicy

#BOARD_SEPOLICY_UNION := \
