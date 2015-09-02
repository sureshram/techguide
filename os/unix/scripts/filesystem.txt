http://www.techrepublic.com/blog/linux-and-open-source/how-to-use-logical-volume-manager-lvm-to-grow-etx4-file-systems-online/

#display volume
vgdisplay

#Extend EXT4 filesystem 
##1 Extend lvm
lvextend -L 4G /dev/mapper/vg_docker-lv00 -v

##2 Extend Filesystem
fsadm resize /dev/mapper/vg_docker-lv00 -v


### File or Directory Permissions

_ - no special permissions
d - directory
l - The file or directory is a symbolic link
s - The setuid/setguid permissions are used to tell the system to run an executable as the owner with the owner\'s permissions.
    Be careful using setuid/setgid bits in permissions. If you incorrectly assign permissions to a file owned by root with the setuid/setgid bit set, then you can open your system to intrusion
t - The sticky bit can be very useful in shared environment because when it has been assigned to the permissions on a directory it sets it so only file owner can rename or delete the said file.

rwx - read, write, execute
ugo - owner, group, all users

### Permissions
chmod - change read/write access
chmod +t salt
