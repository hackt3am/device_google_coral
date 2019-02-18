#
# Copyright 2016 The Android Open Source Project
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

PRODUCT_HARDWARE := coral

include device/google/coral/device-common.mk

DEVICE_PACKAGE_OVERLAYS += device/google/coral/coral/overlay

# Audio XMLs for coral
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_policy_volumes_coral.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.surface_flinger.display_primary_red=0.500651,0.235556,0.00009 \
    ro.surface_flinger.display_primary_green=0.267109,0.695556,0.045211 \
    ro.surface_flinger.display_primary_blue=0.16107,0.064444,0.848491 \
    ro.surface_flinger.display_primary_white=0.950352,1.0,1.089366
