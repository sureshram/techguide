http://www.techrepublic.com/blog/linux-and-open-source/how-to-use-logical-volume-manager-lvm-to-grow-etx4-file-systems-online/

#display volume
vgdisplay

#Extend EXT4 filesystem 
##1 Extend lvm
lvextend -L 4G /dev/mapper/vg_docker-lv00 -v

##2 Extend Filesystem
fsadm resize /dev/mapper/vg_docker-lv00 -v
