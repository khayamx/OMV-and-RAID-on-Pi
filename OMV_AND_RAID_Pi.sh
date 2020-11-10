#!/bin/bash
#installs OMV onto Raspberry Pi OS and builds RAID on disks connected via USB to SATA connection

#update and upgrade Raspberry OS
sudo apt update
sudo apt upgrade

#install mdadm
sudo apt-get install mdadm

#set up RAID 1
mdadm --create /dev/md/vol --level=1 --raid-devices=/dev/sda1 /dev/sdb1 
#if asked if you want to continue say yes

#confirm raid array with
#sudo msadm --detail /dev/md/vol

#install wget
apt-get install wget sudo

#install openmedaivault
sudo wget -O - https://github.com/OpenMediaVault-Plugin-Developers/installScript/raw/master/install | sudo bash







