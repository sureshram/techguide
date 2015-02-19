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


### Docker on Production

- Use data in volume


How does resource sharing (like cpu, memory) between containers work 
Using openstack?
Using mesos?