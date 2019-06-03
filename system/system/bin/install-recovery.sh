#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:4bbf1c58781ce439cb7ff044d20caeb56e969269; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:134217728:e1168eed223dcf469557110ba120a3baa32406c9 EMMC:/dev/block/bootdevice/by-name/recovery 4bbf1c58781ce439cb7ff044d20caeb56e969269 67108864 e1168eed223dcf469557110ba120a3baa32406c9:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
