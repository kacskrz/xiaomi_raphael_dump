#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:8f6a0a5af697ca029c6e79066b5a89e26df0bdc4; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:134217728:cc85ea66601fab4f63a4eaac09c614e9535dc939 EMMC:/dev/block/bootdevice/by-name/recovery 8f6a0a5af697ca029c6e79066b5a89e26df0bdc4 67108864 cc85ea66601fab4f63a4eaac09c614e9535dc939:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
