
#
#	This file is part of the OrangeFox Recovery Project
# 	Copyright (C) 2021 The OrangeFox Recovery Project
#
#	OrangeFox is free software: you can redistribute it and/or modify
#	it under the terms of the GNU General Public License as published by
#	the Free Software Foundation, either version 3 of the License, or
#	any later version.
#
#	OrangeFox is distributed in the hope that it will be useful,
#	but WITHOUT ANY WARRANTY; without even the implied warranty of
#	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#	GNU General Public License for more details.
#
# 	This software is released under GPL version 3 or any later version.
#	See <http://www.gnu.org/licenses/>.
#
# 	Please maintain this if you use this script or any part of it
#

# Release name
PRODUCT_RELEASE_NAME := caymanlm

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from Nord device
$(call inherit-product, device/lge/caymanlm/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := caymanlm
PRODUCT_NAME := twrp_caymanlm
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG VELVET 5G
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=caymanlm_lao_com \
    BUILD_PRODUCT=caymanlm \
    TARGET_DEVICE=caymanlm