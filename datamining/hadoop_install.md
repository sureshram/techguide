### Install Ubuntu [Ubuntu 14.04]
	* Create large disk storage for ubuntu 20GB

###  Install Java 7
http://www.webupd8.org/2012/01/install-oracle-java-jdk-7-in-ubuntu-via.html


The method I followed

sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java7-installer


#### Install Maven 3
http://stackoverflow.com/questions/15630055/how-to-install-maven-3-on-ubuntu-14-04-lts-13-10-13-04-12-10-12-04-by-using-apt

sudo apt-get update
sudo apt-get install maven

Increase the memory for compile
export MAVEN_OPTS="-Xms256m -Xmx512m"

Moven Maven directory to another folder
(If unzipped)
echo "export M2_HOME=/mnt/hadoop/maven" >> ~/.bash_profile
source ~/.bash_profile
(If package apt-get is used)
 sudo vi /etc/maven/m2.conf
change the m2.home

#### Protobuf 2.6 
https://protobuf.googlecode.com/files/protobuf-2.5.0.tar.gz

- Download
wget https://protobuf.googlecode.com/files/protobuf-2.5.0.tar.gz

- Install
http://www.confusedcoders.com/random/how-to-install-g-compiler-for-cc-on-ubuntu-13-04
- Install g++
- sudo apt-get install build-essential
- untar and go to the directory
- ./configure
- sudo make
- sudo make check
- sudo make install
- - sudo ldconfig
- protoc --version #This should display the protocol buf version
- 
### cmake 2.6 or newer
http://www.cmake.org/files/v3.0/cmake-3.0.2-Linux-i386.tar.gz
http://www.cmake.org/download/

wget http://www.cmake.org/files/v3.0/cmake-3.0.2-Linux-i386.tar.gz

 - tar -xvf cmake-3.0.2-Linux-i386.tar.gz 
- sudo mv cmake-3.0.2-Linux-i386  /opt
- Add cmake to path

- echo 'export PATH=$PATH:/opt/cmake-3.0.2-Linux-i386 >> ~/.bash_profile
- source ~/.bash_profile

### Eclipse Setup: Pull all plugins
- Install Build Dependencies: 
  - <code> $ apt-get -y install maven build-essential autoconf automake libtool cmake zlib1g-dev pkg-config libssl-dev </code>
- Install git: 
  - <code> $ sudo apt-get install git </code>
- Install Maven Plugins from hadoop Project
   - $ cd hadoop-maven-plugins
   - $ mvn install 
- Download Eclipse
  - [Click to Download](http://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/helios/R/eclipse-java-helios-linux-gtk-x86_64.tar.gz)
- [Setup Envronment](http://wiki.apache.org/hadoop/EclipseEnvironment)

### Working Directory and Code

- Download Code
git clone git://git.apache.org/hadoop.git

- Build the code
mvn package -Pdist -DskipTests -Dtar


### Run Hadoop

- http://wiki.apache.org/hadoop/GettingStartedWithHadoop