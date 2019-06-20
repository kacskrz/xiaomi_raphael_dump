#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:dbd9a7d1dd27ce9cc2771b2b8eb62a520a7c38b1; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:134217728:f811b6009e6aa9b8be4f4777d2443b359703f35b EMMC:/dev/block/bootdevice/by-name/recovery dbd9a7d1dd27ce9cc2771b2b8eb62a520a7c38b1 67108864 f811b6009e6aa9b8be4f4777d2443b359703f35b:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
