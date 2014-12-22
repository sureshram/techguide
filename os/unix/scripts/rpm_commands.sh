# http://wiki.centos.org/TipsAndTricks/YumAndRPM

###Installing from RPM from local
rpm -Uvh rpmname

###Download RPM from web using wget or curl
 rpm -vhU <rpmurl>

### Find packages in centos
rpm -qa | grep -i <package name>

### Uninstall  
rpm -e <package name>

### Repo List
yum repolist