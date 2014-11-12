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
