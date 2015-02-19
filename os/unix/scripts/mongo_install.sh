echo [mongodb] > /etc/yum.repos.d/mongodb.repo
echo name=MongoDB Repository >> /etc/yum.repos.d/mongodb.repo 
echo baseurl=http://downloads-distro.mongodb.org/repo/redhat/os/x86_64/ >> /etc/yum.repos.d/mongodb.repo
echo gpgcheck=0 >> /etc/yum.repos.d/mongodb.repo
echo enabled=1 >> /etc/yum.repos.d/mongodb.repo

