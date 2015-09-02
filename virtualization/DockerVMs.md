## Docker Tutorials

docker for developers
https://www.youtube.com/watch?v=FdkNAjjO5yQ

docker to production


### Docker Internals

Namesapce - chroot
Control Groups
Union File System - overlays virtual filesystem onto 

sudo docker info

### CentOS Repo 
 - https://registry.hub.docker.com/_/centos/
sudo docker pull centos:centos6

### Performance 
- own process space
- own network, ssh
- normal unix processes
- code: code path native
- cpu: native performance
- memory: few % for accounting (optional)
- network and disk i/o : small overhead but can be reduced to zero
- http rest server and docker commands send to the service which means you can 
	- call docker remotely

#### Docker components

namespace
mnt namespace
net namespace
utc
ipc
user
cgroups (accounting, cpu, blkio, devices (gpu, vm)
copy-on-write storage storage (aufs, overlayfs)

### Docker image location 
Edit /etc/sysconfig/docker
and add other_argument="-g pathtoimagedir"

### Docker Benchmark
- millisecond startup
- 
- 100KB Memory Footprint
- 1-2 MB Disk 

### Container vs Image
Image is a static filesystem with applications
Container is an instance of image with all the execution environment (network, process) applied

- To View images
  - docker images

- To View container
  - docker ps -a 

### Dockerfile

<code>

### Base Image centos6
FROM centos:centos6

### Enable EPEL for Node.js
RUN     rpm -Uvh http://download.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm
yum install bind-utils

</code>


### Build docker image
sudo docker build --tag suresh/ms-db .

### RUN docker image
docker run -ti <image id> <command to run>
- Will start the image and gives you bash shell
docker run -ti xyz  bash


# Docker Command
run docker in the background
sudo docker run -d -P repo:tag

 run docker in detached mode
sudo docker run -d -P --name kafka dockerfile/java:oracle-java7 /bin/bash

 -i interactive
 -d flag which tells Docker to run the container in the background. 
The -P flag is new and tells Docker to map any required network ports inside our container to our host. 



### Docker on Production

- Use data in volume


How does resource sharing (like cpu, memory) between containers work 
Using openstack?
Using mesos?


### Docker Toolbox

# Using Docker Machine 

### VM Location can be changed with the switch -s "D:\VMs\.docker"

### Create a Docker Machine (similar to Boot2Docker) called "admin"
docker-machine -s "D:\VMs\.docker" create --driver virtualbox --virtualbox-cpu-count "2"  --virtualbox-disk-size "35000"   --virtualbox-memory "4096"   --engine-insecure-registry "csig.ddns.net:5000" admin

### Show details of "admin"
docker-machine -s "D:\VMs\.docker" env admin --shell powershell

### Get a SSH shell to "admin"
docker-machine -s "D:\VMs\.docker" ssh admin

### Pull an image from repository
docker pull csig.ddns.net:5000/ri

### Start a container using the image and set up Virtualbox port forwarding to 
### forward 15001 to 15001 on the "admin" VM
docker run -dPp 15001:8085 csig.ddns.net:5000/ri 172.19.2.135 15001

### Another simple example to Bind Docker container to specific port - Bind 5000 to 80
docker run -d -p 80:5000 training/webapp python app.py


### Docker Commands  
docker restart ec
docker logs -f ec39
docker stop id
docker ps -l

### Shutdown docker machine
docker-machine -s "D:\VMs\.docker" stop admin