#!/bin/bash
#Script to print lvs in the given vg
echo "The script will attempt to print lvs of a given vgname
Choose vgnames from the below to print lvs in it "
vgs
read -p "Enter vgname from the above list :" vgname
echo "Here are lv from $vgname"
lvs $vgname --noheading -o lv_name
count=`lvs $vgname|wc -l`
echo "There are $count lvs found in $vgname"
#End
