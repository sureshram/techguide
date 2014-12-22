#!/usr/bin/env bash

# Suresh Ramakrishnaiah - Tested with Ubuntu 14.04
# Purpose: The purpose of the scrip is to move a directory to an existing partition
# CAUTION: Please review the script carefully before executing it to understand the process
# Read here for more details - https://help.ubuntu.com/community/Partitioning/Home/Moving

SRC=$1
DEST=$2
mkdir ${DEST}
sudo rsync -aXS --exclude='/*/.gvfs' ${SRC}/. ${DEST}
sudo diff -r ${SRC} ${DEST}
cd / && sudo mv ${SRC} ${SRC}_old && sudo ln -s ${DEST} ${SRC}

# Delete old directory
# cd /
# sudo rm -r ${SRC}_old