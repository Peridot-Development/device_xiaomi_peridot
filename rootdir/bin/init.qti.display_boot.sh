#!/vendor/bin/sh
# Copyright (c) 2022, 2024 Qualcomm Innovation Center, Inc. All rights reserved.
# Copyright (c) 2020-2021, The Linux Foundation. All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are
# met:
#     * Redistributions of source code must retain the above copyright
#       notice, this list of conditions and the following disclaimer.
#     * Redistributions in binary form must reproduce the above
#       copyright notice, this list of conditions and the following
#       disclaimer in the documentation and/or other materials provided
#       with the distribution.
#     * Neither the name of The Linux Foundation nor the names of its
#       contributors may be used to endorse or promote products derived
#      from this software without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED "AS IS" AND ANY EXPRESS OR IMPLIED
# WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT
# ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS
# BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
# CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
# SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR
# BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
# WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
# OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN
# IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
#
#

target=`getprop ro.board.platform`
if [ -f /sys/devices/soc0/soc_id ]; then
    soc_hwid=`cat /sys/devices/soc0/soc_id`
else
    soc_hwid=`cat /sys/devices/system/soc/soc0/id`
fi

case "$target" in
    "pineapple")
    #SOC ID for Pineapple is 557
    case "$soc_hwid" in
      557)
        # xiaomi remove start
        # setprop vendor.display.enable_fb_scaling 0
        # xiaomi remove end
        setprop vendor.gralloc.use_dma_buf_heaps 1
        setprop vendor.display.target.version 4
        setprop vendor.display.enable_posted_start_dyn 2
        setprop vendor.display.enable_allow_idle_fallback 1
        setprop vendor.display.enable_perf_hint_large_comp_cycle 1
        setprop vendor.display.enable_rotator_ui 1
        setprop vendor.display.enable_spec_fence 0
        setprop vendor.display.thermal.version 1
        setprop vendor.display.enable_rc_support 1
        setprop vendor.display.enable_latch_media_content 1
        setprop vendor.display.enable_inline_writeback 1
        setprop vendor.display.timed_render_enable 1
        setprop vendor.gralloc.hw_supports_ubwcp 0
        ;;
      614|632|642|643)
        # SOC ID for Cliffs is 614
        # SOC ID for Cliffs7 is 632
        # SOC ID for CliffsP is 642
        # SOC ID for Cliffs7P is 643
        setprop vendor.display.enable_fb_scaling 0
        setprop vendor.gralloc.use_dma_buf_heaps 1
        setprop vendor.display.target.version 5
        setprop vendor.display.enable_posted_start_dyn 2
        setprop vendor.display.enable_allow_idle_fallback 1
        setprop vendor.display.enable_perf_hint_large_comp_cycle 1
        setprop vendor.display.enable_rotator_ui 1
        setprop vendor.display.enable_spec_fence 1
        setprop vendor.display.thermal.version 1
        setprop vendor.display.enable_rc_support 1
        setprop vendor.display.enable_latch_media_content 1
        setprop vendor.display.enable_inline_writeback 1
        setprop vendor.display.timed_render_enable 1
        setprop vendor.gralloc.hw_supports_ubwcp 0
        setprop vendor.display.enable_qsync_idle 1
        ;;
      623)
        # SOC ID for Pitti is 623
        setprop vendor.display.enable_fb_scaling 0
        setprop vendor.gralloc.use_dma_buf_heaps 1
        setprop vendor.display.target.version 5
        setprop vendor.display.enable_posted_start_dyn 2
        setprop vendor.display.enable_allow_idle_fallback 1
        setprop vendor.display.enable_perf_hint_large_comp_cycle 1
        setprop vendor.display.enable_rotator_ui 1
        setprop vendor.display.enable_spec_fence 1
        setprop vendor.display.thermal.version 1
        setprop vendor.display.enable_rc_support 1
        setprop vendor.display.enable_latch_media_content 1
        setprop vendor.display.enable_inline_writeback 0
        setprop vendor.display.timed_render_enable 1
        setprop vendor.gralloc.hw_supports_ubwcp 0
        setprop vendor.display.disable_gpu_color_convert 0
        setprop vendor.display.disable_cwb_idle_fallback 1
        setprop vendor.display.disable_offline_rotator 0
        setprop vendor.display.enable_qsync_idle 1
    esac
    ;;
    "kalama")
    #SOC ID for Kalama is 519
    case "$soc_hwid" in
      519)
        setprop vendor.display.enable_fb_scaling 0
        setprop vendor.display.target.version 4
        setprop vendor.gralloc.use_dma_buf_heaps 1
        setprop vendor.display.enable_posted_start_dyn 2
        setprop vendor.display.enable_allow_idle_fallback 1
        setprop vendor.display.enable_perf_hint_large_comp_cycle 1
        setprop vendor.display.enable_rotator_ui 1
        setprop vendor.display.enable_spec_fence 0
        setprop vendor.display.thermal.version 1
        setprop vendor.display.enable_rc_support 1
        setprop vendor.display.enable_latch_media_content 1
        setprop vendor.display.enable_inline_writeback 1
        setprop vendor.display.timed_render_enable 1
        setprop debug.sf.disable_client_composition_cache 0
        setprop vendor.gralloc.hw_supports_ubwcp 0
        ;;
    esac
    ;;
    "taro")
    #Set property to differentiate Waipio
    #SOC ID for Waipio is 457
    #SOC ID for Cape MSM is 530
    #SOC ID for Cape APQ is 531
    #SOC ID for Cape 4g is 540
    case "$soc_hwid" in
        457)
        setprop vendor.gralloc.use_dma_buf_heaps 1
        setprop vendor.display.enable_posted_start_dyn 2
        setprop vendor.display.enable_allow_idle_fallback 1
        setprop vendor.display.enable_perf_hint_large_comp_cycle 1
        setprop vendor.display.enable_rotator_ui 1
        setprop vendor.display.enable_spec_fence 0
        setprop vendor.display.thermal.version 1
        setprop vendor.display.enable_rc_support 1
        setprop vendor.display.target.version 3
        setprop vendor.display.enable_fb_scaling 0
        setprop vendor.display.disable_cwb_idle_fallback 1
        ;;
        530|531|540)
        setprop vendor.gralloc.use_dma_buf_heaps 1
        setprop vendor.display.enable_posted_start_dyn 2
        setprop vendor.display.enable_allow_idle_fallback 1
        setprop vendor.display.enable_perf_hint_large_comp_cycle 1
        setprop vendor.display.enable_rotator_ui 1
        setprop vendor.display.enable_spec_fence 0
        setprop vendor.display.thermal.version 1
        setprop vendor.display.enable_rc_support 1
        setprop vendor.display.target.version 2
        setprop vendor.display.enable_qsync_idle 1
        setprop vendor.display.disable_cwb_idle_fallback 1
        ;;
        506|547)
        # Set property for Diwali
        # SOC ID for Diwali is 506
        setprop vendor.gralloc.use_dma_buf_heaps 1
        setprop vendor.display.enable_posted_start_dyn 2
        setprop vendor.display.enable_allow_idle_fallback 1
        setprop vendor.display.enable_perf_hint_large_comp_cycle 1
        setprop vendor.display.enable_rotator_ui 1
        setprop vendor.display.enable_spec_fence 0
        setprop vendor.display.thermal.version 1
        setprop vendor.display.enable_rc_support 1
        setprop vendor.display.target.version 2
        setprop vendor.display.enable_qsync_idle 1
        ;;
    esac
    ;;
    "lahaina")
    #Set property to differentiate Lahaina & Shima
    #SOC ID for Lahaina is 415, Lahaina P is 439, Lahaina-ATP is 456
    case "$soc_hwid" in
        415|439|456)
        # Set property for lahaina
        setprop vendor.display.target.version 1
        setprop vendor.display.enable_posted_start_dyn 2
        setprop vendor.display.enable_perf_hint_large_comp_cycle 1
        setprop vendor.display.enable_allow_idle_fallback 1
        ;;
        450)
        # Set property for shima
        setprop vendor.display.target.version 2
        setprop vendor.display.enable_perf_hint_large_comp_cycle 1
        setprop vendor.display.enable_posted_start_dyn 1
        setprop vendor.display.enable_qsync_idle 1
        setprop vendor.display.enable_allow_idle_fallback 1
        ;;
        475)
        # Set property for Yupik
        setprop vendor.display.enable_posted_start_dyn 2
        ;;
    esac
    ;;
    "holi")
    # Set property for holi
    setprop vendor.display.target.version 2
    setprop vendor.display.disable_offline_rotator 0
    setprop vendor.display.disable_rotator_ubwc 1
    setprop vendor.display.enable_perf_hint_large_comp_cycle 0
    setprop vendor.display.enable_posted_start_dyn 1
    setprop vendor.display.enable_allow_idle_fallback 1
    ;;
esac
