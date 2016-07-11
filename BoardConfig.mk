DEVICE_TREE := device/samsung/kccat6

# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := APQ8084

# Platform
TARGET_BOARD_PLATFORM := apq8084
TARGET_BOARD_PLATFORM_GPU := qcom-adreno420

# Flags
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
#COMMON_GLOBAL_CFLAGS +=

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := krait
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

# Kernel
#TARGET_KERNEL_SOURCE := kernel/samsung/apq8084
TARGET_KERNEL_ARCH := arm
TARGET_KERNEL_HEADER_ARCH := arm
TARGET_KERNEL_CONFIG := twrp_kccat6_defconfig

TARGET_PREBUILT_KERNEL := $(DEVICE_TREE)/zImage
TARGET_PREBUILT_DTB := $(DEVICE_TREE)/dtb.img

# Boot image
BOARD_KERNEL_CMDLINE := console=null androidboot.hardware=qcom androidboot.bootdevice=msm_sdcc.1 androidboot.selinux=permissive user_debug=23 msm_rtb.filter=0x3b7 dwc3_msm.cpu_to_affin=1
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 4096
# 000RU = recovery kernel, 000KU = system kernel
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x02600000 --tags_offset 0x02400000 --board SYSMAGIC000RU
BOARD_CUSTOM_BOOTIMG_MK := $(DEVICE_TREE)/bootimg.mk

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE     := 0x000D00000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x000F00000
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 0x09C400000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x2EDAF4000 # 0x2EDAF8000 - 16384 (footer)
BOARD_FLASH_BLOCK_SIZE := 0x40000

# File systems
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# TWRP specific build flags
TW_THEME := portrait_hdpi
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/f9200000.ssusb/f9200000.dwc3/gadget/lun%d/file"
TW_BRIGHTNESS_PATH := "/sys/devices/fd900000.qcom\x2cmdss_mdp/qcom\x2cmdss_fb_primary.170/leds/lcd-backlight/brightness"
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 162
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
TW_INCLUDE_NTFS_3G := true
# exFAT drivers included in the kernel
TW_NO_EXFAT_FUSE := true
# No love for the wicked (device ships with M)
TW_EXCLUDE_SUPERSU := true

# Encryption support
TW_INCLUDE_CRYPTO := true
#TW_INCLUDE_CRYPTO_SAMSUNG := true
TARGET_HW_DISK_ENCRYPTION := true
TARGET_KEYMASTER_WAIT_FOR_QSEE := true

# Debug flags
#TWRP_INCLUDE_LOGCAT := true
