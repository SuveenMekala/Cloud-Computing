#!/bin/bash

#mounting disk
sudo mdadm --create --verbose --force /dev/md0 --level=0 --name=raidLocal --raid-devices=1 /dev/nvme0n1

sudo mdadm --detail /dev/md0

sudo mkfs.ext4 -L raidLocal /dev/md0 

sudo mkdir -p /mnt/raid

sudo mount LABEL=raidLocal /mnt/raid 

cd /mnt/raid


#downloading the gensort file.
sudo wget http://www.ordinal.com/try.cgi/gensort-linux-1.5.tar.gz ~/mnt/raid

tar -xvzf gensort-linux-1.5.tar.gz


cd 64

#128 GB
./gensort -a 1374388831 inoutfile.txt




