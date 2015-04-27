Chef  
  - https://learn.chef.io/rhel/get-ready-to-add-another-server/

  - Workstation 
  - Server
  - Agent


Saltstack

 - Master - Runs execution modules


 - Minion - Runs program *grains* which contains system information about the node 
            it is controlling
       - security sensitive information is accessed from Pillar system

 -  Contains cloud management system Apache LibCloud

 - [Supported Modules](http://docs.saltstack.com/en/latest/ref/modules/all/index.html)
 
 - Job Management - Schedule and Manage running processes on the system

 - gitfs for storing files and packages

 - Install Master
 - Install Minion - Configure it to point to master

 - Enable Master Port - 4505 and 4506

 - Start Master - salt-master -d  #-d for daemon mode  
 - Start minion - salt-minion -d

 As master and minion talk to eather the master need to accept the key

 - Accept Key - salt-key -a 10.0.100.107
 - List Key - salt-key -L
 - Elasticsearch - https://github.com/medcl/salt-elasticsearch

 - Predefined Salt Formulas https://github.com/saltstack-formulas  help - needs separate gitfs setup to manage the copy of the formulas
 


Puppet - Client/Server

  - Catalog