#!/bin/bash


#Wrapper script to call qemu booting your new compiled Kernel image using initrd to get booted succesfully
#It uses current initrd from machine to boot qemu

if [[ ! $# -eq 2 ]]
then
	echo "usage: runqemu <kernel image> <qemu hd image>"
	exit -1
fi

echo "Starting qemu for: $1 @ $2"

eval 'qemu -m 64 -kernel $1 -hda $2 -append "root=/dev/hda clock=pit" -initrd /boot/initrd.img-2.6.32-33-generic'
