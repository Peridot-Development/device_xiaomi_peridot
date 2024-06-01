if [ ! -f /sys/devices/platform/soc/1d84000.ufshc/ufsffu/ffu_flag ]; then 
    rmmod ufs_ffu
fi;
