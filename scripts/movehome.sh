#!/usr/bin/env bash

# Read here https://help.ubuntu.com/community/Partitioning/Home/Moving

DEST=/images
mkdir ${DEST}
#sudo rsync -aXS --exclude='/*/.gvfs' /home/. ${DEST}
#sudo diff -r /home ${DEST}
#cd / && sudo mv /home /old_home && ln -s ${DEST} /home