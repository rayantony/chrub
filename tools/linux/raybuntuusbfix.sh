# Chromebook C7 Acer Ubuntu - Post Filesys Install (USB) or clone cleanup.
#chkdisk /dev/sd[x] 3 where x is of course the target drive and the 3 is the optional new size of rootfs after shrinking it" 
#found feb 2015 not yet tested.
#by ray october 2013
#
echo -e "Disk Filesys checker and tune-up. After an install or a DiskDump, it may need it."
target_disk=$1
target_kern="${target_disk}6"
target_rootfs="${target_disk}7"
echo -e "Proceeding to fix ${target_rootfs} unless that's not correct, in which case now's the time for CTRL+C otherwise press Enter"
read -p " "
e2fsck -y -f -v ${target_rootfs}
echo -e "checked disk and repaired file system. Press Ctrl+C to leave it or press Enter to continue and shrinks file system size"
read -p " "
resize2fs -M -p ${target_rootfs}
echo "\nRoot filesys is shrunk and verified. So far so good."
echo "\nLet's figure out a new size for the shrunken partition to make copying, and storing the image easier."
read -p "Enter a single number for size in GB  " new_desired_size
echo -e "\nOK, so thats ${new_desired_size} let's figure that out as 512 bytes blocks to fit into the partition table..."
new_adjusted_size=$((new_desired_size * 1024 * 1024 * 2 ))
echo -e "\nAlright, the new size is ${new_adjusted_size}  "
#
# Need to ADD A CHECK here that the size is not greater than the available space...
echo -e "\nBusy changing partition table..."
#parted bad to use? use cgpt to be safe
#parted resize /dev/sdc7 65600 $new_root_size
cgpt add -i 6 -b 64 -s 32768 -l KERN-C -t "kernel" ${target_kern}  
cgpt add -i 6 -l KERN-C -t kernel -P 5 -T 1 -S 0 ${target_kern}
cgpt add -i 7 -b 65600 -s $new_adjusted_size -l ROOT-C -t "rootfs" ${target_disk}
#
# good idea to restart anyway but this should refresh the kernels understanding of the partiton table
sync
blockdev --rereadpt ${target_disk}
partprobe ${target_disk}
echo -e "\nDisk is done. Success!"
