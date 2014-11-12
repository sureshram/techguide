### Docker Commands

### Container vs Image
Image is a static filesystem with applications
Container is an instance of image with all the execution environment (network, process) applied

### Running Containers
docker ps -a 

### commit container back to image
docker commit 3a09b2588478 mynewimage

yum install bind-utils