adjust_permission()
{
    chown system system /sys/bus/coresight/devices/coresight-tmc-etf/curr_sink
    chown system system /sys/bus/coresight/devices/coresight-tmc-etf/enable_sink
    chown system system /sys/bus/coresight/devices/coresight-tmc-etr/curr_sink
    chown system system /sys/bus/coresight/devices/coresight-tmc-etr/enable_sink
    chown system system /sys/bus/coresight/devices/coresight-tmc-etr/out_mode
    chown system system /sys/bus/coresight/devices/coresight-tpiu/curr_sink
    chown system system /sys/bus/coresight/devices/coresight-tpiu/out_mode
    chown system system /sys/bus/coresight/devices/coresight-stm/enable
    chown system system /sys/bus/coresight/devices/coresight-stm/enable_source
    chown system system /sys/bus/coresight/devices/coresight-hwevent/enable
    chown -h root.oem_2902 /sys/devices/platform/soc/10048000.tmc/coresight-tmc-etr/block_size
    chmod 660 /sys/devices/platform/soc/10048000.tmc/coresight-tmc-etr/block_size
    chown -h root.oem_2902 /sys/devices/platform/soc/10048000.tmc/coresight-tmc-etr/mem_type
    chmod 660 /sys/devices/platform/soc/10048000.tmc/coresight-tmc-etr/mem_type
    chown -h root.oem_2902 /sys/devices/platform/soc/10048000.tmc/coresight-tmc-etr/mem_size
    chmod 660 /sys/devices/platform/soc/10048000.tmc/coresight-tmc-etr/mem_size
    chown -h root.oem_2902 /sys/bus/coresight/devices/coresight-tmc-etr/block_size
    chmod 660 /sys/bus/coresight/devices/coresight-tmc-etr/block_size
    mkdir /config/stp-policy/coresight-stm:p_ost.policy
    chmod 660 /config/stp-policy/coresight-stm:p_ost.policy
    mkdir /config/stp-policy/coresight-stm:p_ost.policy/default
    chmod 660 /config/stp-policy/coresight-stm:p_ost.policy/default
    echo 0x10 > /sys/bus/coresight/devices/coresight-stm/traceid
}
