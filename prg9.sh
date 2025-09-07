#!/bin/bash
#Script to create filesystem in a given Volumegroup
echo "Create filesystem:"
vgs --noheading
read -p "Choose vgname in which you want to create FS:" vgname
echo "Below are pvs found in the $vgname:"
pvs |grep $vgname
echo "Below are lvs found in the $vgname:"
lvs --noheading -o lv_name $vgname
read -p "Enter the name of the lv to create(do not choose from above list):" lvname
read -p "Enter LV Size in MB" lvsize
read -p "Enter fstype(ext4 or xfs ):" fstype
read -p "Enter mount point:" mntpt
lvcreate -y -n $lvname -L $lvsize $vgname >/dev/null 2>&1
mkfs.$fstype /dev/$vgname/$lvname >/dev/null 2>&1
mkdir $mntpt >/dev/null 2>&1
mount /dev/$vgname/$lvname $mntpt
echo "File system $mntpt created.. Verify in below output"
df -h $mntpt
#END
