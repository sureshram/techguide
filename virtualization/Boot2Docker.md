# Windows Installation #

- https://docs.docker.com/installation/windows/

- boot2docker init
- boot2docker up

##Set Git Path needed for ssh
- set PATH=%PATH%;"c:\Program Files (x86)\Git\bin"


##Set Command Line Options

    - set DOCKER_TLS_VERIFY=1
    - set DOCKER_HOST=tcp://192.168.59.103:2376
    - set DOCKER_CERT_PATH=C:\Users\suresh.r\.boot2docker\certs\boot2docker-vm


## Upgrade Docker

- boot2docker stop
- boot2docker download
- boot2docker start


## Run bash only

docker run -ti ubuntu:trusty /bin/bash
OR
docker run -i -t ubuntu /bin/bash


sudo add-apt-repository ppa:saltstack/salt


### Images
Open TSB - docker run -d -p 4242:4242 opower/opentsdb
