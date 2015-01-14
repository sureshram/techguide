
### Optimization
 - UDP Buffer Size (http://www.29west.com/docs/THPM/udp-buffer-sizing.html)

 - TCP Sockets : Max TCP connections (61000 - 32768) / 60
    [Details](http://stackoverflow.com/questions/410616/increasing-the-maximum-number-of-tcp-ip-connections-in-linux)

   net.ipv4.ip_local_port_range = 32768 61000
   net.ipv4.tcp_fin_timeout = 60


### Firewall - IP Table Setup 

http://www.howtogeek.com/177621/the-beginners-guide-to-iptables-the-linux-firewall/

Note: each packet is are processed in the order in the iptables
iptables-save to display the iptable information 

iptables -L -v

 -- To allow port incoming connection to 5500 (new) and respond (established) 
iptables -A INPUT -p tcp --dport 5500 -s 172.26.2.30 -m state --state NEW,ESTABLISHED -j ACCEPT
iptables -A OUTPUT -p tcp --sport 5500 -d 172.26.2.30 -m state --state ESTABLISHED -j ACCEPT


Accept connections

iptables --policy INPUT ACCEPT
iptables --policy OUTPUT ACCEPT
iptables --policy FORWARD ACCEPT

Drop connections

iptables --policy INPUT DROP
iptables --policy OUTPUT DROP
iptables --policy FORWARD DROP

### TCP Dump

tcpdump -n -X

n - names not resolved, ip address only
X - ascii and hex
-i any - all interfaces
-c: only get x number o
-q: show less protocol information
-E: Decrypt IPSEC traffic by providing an encryption key


s - numbe of bytes to capture, default 96, 0 - everything
-e : Get the ethernet header as well
S - display sequence number absolute not relative


Reference :

QuickHelp:  http://danielmiessler.com/study/tcpdump/
Manual:  http://www.tcpdump.org/manpages/tcpdump.1.html

Capture the dump

tcpdump host localhost > dat & tail -f dat

‘tcpdump  -l  |  tee dat’’ or ‘‘tcpdump  -l   > dat  &  tail  -f  dat


### Static IP

http://hsukumar.wordpress.com/2008/04/15/static-ip-address-on-unix-and-redhat-machine/

Temp (Without Restarting)

# ifconfig eth0 143.229.xxx.yyy netmask 255.255.255.0

# ifconfig eth0 broadcast 143.229.xxx.255

Permanent (After Reboot)

cat /etc/sysconfig/network-scripts/ifcfg-eth0

# Intel Corporation 82545EM Gigabit Ethernet Controller (Copper)
DEVICE=eth0
BOOTPROTO=none
ONBOOT=yes
HWADDR=00:0c:29:66:3a:26
NETMASK=255.255.255.0
IPADDR=10.0.100.125
GATEWAY=10.0.100.1
TYPE=Ethernet

and type the following command

$ service network restart

## Networking

** Execute "setup" from command line to see graphical options (even on putty)


/sbin/ifconfig - ip address of the box
hostname: displays hostname information

/etc/passwd for changing password

/etc/hosts : host file info

/proc/net/dev - for transport errors
netstat -s  for network errors
traceroute - checking routing for the ip address





uname: displays information about the operating system


kill: sends a signal to a running process

   To kill a process with process id 21234
	    $ kill -KILL 21234

   To stop a process with process id 21234
	    $ kill -STOP 21234

   To resume a stopped process with process id 21234
	    $ kill -CONT 21234

ipcs: displays Interprocess Communication (IPC) facility status

   ipcs [-a|-bcopt] [-mqs]


ipcrm: removes message queue, semaphore set, or shared memory identifiers

  ipcrm [-m shared_memory] [-M shared_memory_key] [-q message_queue] [-Q
         message_key] [-s semaphore_ID] [-S semaphore_key]
where:
  

netstat: displays network statistics

  To produce the default display for network connections, enter:
            netstat

  To show the state of the configured interfaces, enter:
            $ netstat -i

   To show the routing tables, enter:
            $ netstat -r

   To show the routing tables with network addresses, enter:
            $ netstat -rn


ifconfig: configures or displays network interface parameters

   To show information about all interfaces, enter:
	    $ ifconfig -a

   To query the status of serial line interface sl0, enter:
            $  ifconfig sl0

nslookup: queries Internet name servers interactively

   To find the dotted decimal IP address of host name snowhite.cis.temple.edu
	    $ nslookup snowhite.cis.temple.edu

   To find the hostname of the dotted decimal IP address 155.247.190.207
	    $ nslookup 155.247.190.207

ping: Sends ICMP ECHO_REQUEST packets to network hosts

   To determine the status of host www.cs.stanford.edu:
	    $ ping www.cs.stanford.edu

   To also have a record of the route to www.cs.stanford.edu:
	    $ ping -R www.cs.stanford.edu

traceroute: Print the route that packets take to the network host

   To find the route to host rtfm.mit.edu, enter:
	    $ traceroute rtfm.mit.edu

arp:Displays and controls Address Resolution Protocol (ARP) tables

   To display all current ARP entries:
	    $ arp -a

lsof: list information about files opened by processes

This is a complex command not available on all unix (you can obtain a copy from ftp://vic.cc.purdue.edu/pub/tools/lsof/).

  To list all open files, use:
       lsof

  To list all open Internet, x.25 (HP-UX), and UNIX domain files, use:
       lsof -i -U

  To list all files using any protocol on any port of snowhite.cis.temple.edu, use:
       lsof -i @snowhite.cis.temple.edu

  To find the process that has /u/abe/foo open, use:
       lsof /u/abe/foo

  To find any open file, including an open UNIX domain socket file, with the
  name /dev/log, use:
       lsof /dev/log

  To obtain PID and command name field output for each process, file descrip-
  tor, file device number, and file inode number for each file of each pro-
  cess, use:
       lsof -FpcfDi

  To find an IP version 4 socket file by its associated numeric dot-form
  address, use:
       lsof -i@128.210.15.17

iostat: display I/O statistics

  iostat [drive...] [interval] [count]
For example
  iostat 1 5
displays 5 status reports taken at 1 second intervals.

vmstat: displays virtual memory statistics

  vmstat interval [count]
  vmstat [-f|-M|-P|-s]
where:
  -f  Displays only statistics about the number of forks since system startup
      (see the fork() call).
  -P  Displays accumulated statistics about physical memory use.
  -s  Displays accumulated statistics along with the page size.

strings: Finds strings in an ASCII or binary file.

   strings [-ao] [-n number] [file...]
   -a Searches an entire object file, rather than just the initialized data
      space.

   -n number
      Sets the minimum string length to number rather than the default of 4.

   -o Precedes each string by its offset (in octal) in the file.

df: Displays statistics on free disk space
du:Displays a summary of disk usage

   To display the disk usage of a directory tree and each of its sub-
   trees, enter:
          $ du /u/fran

   To display the disk usage of each file, enter:
          $ du -a /u/fran
   
   To display only the total disk usage of a directory tree, enter:
          $ du -rs /u/fran

route: Manipulates the routing tables manually
Requires system privilege