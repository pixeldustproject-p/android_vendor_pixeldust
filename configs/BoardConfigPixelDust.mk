ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include vendor/pixeldust/configs/BoardConfigQcom.mk
endif

include vendor/pixeldust/configs/BoardConfigKernel.mk

include vendor/pixeldust/configs/BoardConfigSoong.mk
