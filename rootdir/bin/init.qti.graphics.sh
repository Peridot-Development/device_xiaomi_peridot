#! /vendor/bin/sh
#==============================================================================
#       init.qti.graphics.sh
#
#  Copyright (c) 2023 Qualcomm Technologies, Inc.
#  All Rights Reserved.
#  Confidential and Proprietary - Qualcomm Technologies, Inc.
#===============================================================================

egl_vendor=`getprop ro.hardware.egl`

#Avoid setting the properties if already set
if [[ "$egl_vendor" != "adreno" ]]; then
    soc_subset_parts=0
    if [ -f /sys/devices/soc0/subset_parts ]; then
        soc_subset_parts=`cat /sys/devices/soc0/subset_parts` 2> /dev/null
    fi

    #GPU - bit 1
    gpu_mask=0x00000002
    is_no_gpu=$(( gpu_mask&soc_subset_parts ))

    if [ $is_no_gpu -eq 2 ]; then
        setprop vendor.display.gpu_rendering false
    else
        setprop vendor.display.gpu_rendering true
    fi
fi
