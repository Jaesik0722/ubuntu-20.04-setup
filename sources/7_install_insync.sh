#!/usr/bin/env bash
cd ~
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys ACCAF35C
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys ACCAF35C
sudo sh -c 'echo "deb http://apt.insync.io/ubuntu focal non-free contrib" > /etc/apt/sources.list.d/insync.list'
sudo apt update && sudo apt install -y insync
