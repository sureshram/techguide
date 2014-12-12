#!/usr/bin/env bash

# Suresh Ramakrishnaiah - Tested with Ubuntu 14.04
# Purpose: The purpose of the scrip is to move a directory to an existing partition
# CAUTION: Please review the script carefully before executing it to understand the process
# Read here for more details - https://help.ubuntu.com/community/Partitioning/Home/Moving

DEST=$1
mkdir ${DEST}
sudo rsync -aXS --exclude='/*/.gvfs' /home/. ${DEST}
sudo diff -r /home ${DEST}
cd / && sudo mv /home /old_home && sudo ln -s ${DEST} /home

# Delete old directory
# cd /
# sudo rm -r /old_home