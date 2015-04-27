### VMWare Adding Virtual Disk - CentOS or redhat 
	ADD virtual HDD in vsphere
   

- Rescan to show new disk echo "---" > /sys/class/scsi_host/host0/scan
 Display all partitions including the newly added one (should show up as /dev/sdb or /dev/sdc ) fdisk -l
-	Create Partition (Device Name): 	`fdisk /dev/sdb`
-	 [Option n - to add partition Choose Primary Partion 
-	 (Unix can have 4 primary partitions with one as active boot partition where MBR resides)
     Choose default for cylinder
-	Save the partition Command (m for help): w
-	Format the partition 
     `mkfs -t ext3 /dev/sdb1`
-	Verify/Edit File System Table to specify partition directory mapping # vi /etc/fstab
      Add Entry : /dev/sdb1 /disk2 ext3 defaults 1 2
     [Ubuntu]  `blkid` to get UUID
               UUID=XXXX  /disk2 ext3 defaults 1 2
      /dev/sdb1 => This is the physical partition 
      /opt/disk2 => This is the mount point that should be used to mount the file system. ext3 => This is the file system file. ext3 is a linux os file system type. default => The mount options to be used when mounting the file system. We normally use defaults. 1 => Indicates if the file system should be dumped by dump command. 0=false 2 => How fsck should check the file systems when being mounted on startup.
-	Mount Without Restart 
        `mount -t ext3 /dev/sdb1 /disk2`
-	Restart VM and confirm new mount shows up


### References
https://help.ubuntu.com/community/Fstab
