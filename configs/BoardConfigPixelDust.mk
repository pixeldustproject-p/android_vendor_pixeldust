# QCOM HW crypto
ifeq ($(TARGET_HW_DISK_ENCRYPTION),true)
    TARGET_CRYPTFS_HW_PATH ?= vendor/qcom/opensource/cryptfs_hw
endif

include vendor/pixeldust/configs/BoardConfigKernel.mk

include vendor/pixeldust/configs/BoardConfigSoong.mk
