# prepare USB drive for becoming a Chromebook Ubuntu Boot Disk
#use like: sudo bash raybuntuusb /dev/sdx where sdx is obviously your destination drive

#handle somepower settings
powerd_status="`initctl status powerd`"
if [ ! "$powerd_status" = "powerd stop/waiting" ]
then
  echo -e "Stopping powerd to keep display from timing out..."
  initctl stop powerd
fi
setterm -blank 0

#Safety check
if mount|grep ${target_rootfs}
then
  echo "Refusing to continue since ${target_rootfs} is formatted and mounted. Try rebooting"
  exit 
fi

if [ "$1" != "" ]; then
  target_disk=$1
  echo "Got ${target_disk} as target drive"
  echo ""
  echo "WARNING! All data on this device will be wiped out! Continue at your own risk!"
  echo ""
  read -p "Press [Enter] to wipe ${target_disk} and prepare disk as a Chromebook Ubuntu style Boot Drive or CTRL+C to quit"
  ext_size="`blockdev --getsz ${target_disk}`"
  aroot_size=$((ext_size - 65600 - 33))
  parted --script ${target_disk} "mktable gpt"
  cgpt create ${target_disk} 
  cgpt add -i 6 -b 64 -s 32768 -S 1 -P 5 -l KERN-C -t "kernel" ${target_disk}
  cgpt add -i 7 -b 65600 -s $aroot_size -l ROOT-C -t "rootfs" ${target_disk}
  sync
  blockdev --rereadpt ${target_disk}
  partprobe ${target_disk}
else
  read -p "Did not understand your input for target ${target_disk}"
  exit
fi
target_rootfs="${target_disk}7"
target_kern="${target_disk}6"
echo "Ready for install Target Kernel Partition: $target_kern  Target Root FS: ${target_rootfs}"
