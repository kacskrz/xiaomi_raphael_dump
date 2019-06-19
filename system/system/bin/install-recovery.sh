#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:e0e1e18948cad57af6120ada82c650a6edc34bb4; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:134217728:9dd8283e656137a5a0c23cfec5935ae081211ed7 EMMC:/dev/block/bootdevice/by-name/recovery e0e1e18948cad57af6120ada82c650a6edc34bb4 67108864 9dd8283e656137a5a0c23cfec5935ae081211ed7:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
