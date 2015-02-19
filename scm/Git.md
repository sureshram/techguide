# Git Guide

### Local Configuration settings on your machine

git config -l


###  Create new Project


mkdir newproject
cd newproject
git init


###  Stage new file README.txt

newproject>notepad README.txt
newproject>git add . 


###  Commit new file to local repo

newproject>git commmit -m 'New Project Setup - README.txt'

### Display Remote Repositories
http://git-scm.com/book/en/v2/Git-Basics-Working-with-Remotes

git remote -v

git add remote techguide git@github.com:sureshram/techguide.git


### Push changes to remote repo

git push techguide master

###  Change remote url to different remote
git remote set-url origin newurl


### Pull request

git reguest-pull [remote-repo-name-like-origin] https://github.com/sureshram/Project.git [branch-name-like-master]

### Creating a branch
To create a branch and switch to it at the same time, you can run the git checkout command with the -b switch
git checkout -b iss53

#####start off in the apache trunk
git checkout trunk
#####create a new branch from trunk
git branch HDFS-775
#####switch to it
git checkout HDFS-775
#####show what's branch you are in
git branch

### Best Practices

- The recommended process for working with Apache projects is: one branch per JIRA issue
- git-bisect for finding the difference between branches/releases
- git rebase


#### Deleting files permanently from the repository

Option 1
https://help.github.com/articles/remove-sensitive-data/

Option 2
Download the tool - https://rtyley.github.io/bfg-repo-cleaner/

Delete the files permanently
java -jar .\bfg-1.12.0.jar --delete-files systemi_client.log


View the change history <-p -2 last two changes>
git log -p -2

git reflog expire --expire=now --all && git gc --prune=now --aggressive

On Windows - this works
git reflog expire --expire=now --all; git gc --prune=now --aggressive

#### Push any changes to be committed
git push


#### Push branch changes
git push origin elkstack1.3.4_1.4.2_3.0:master

