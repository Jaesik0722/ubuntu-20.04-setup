#!/usr/bin/env bash
cd ~
wget https://repo.anaconda.com/archive/Anaconda3-2020.07-Linux-x86_64.sh
chmod +x Anaconda3-2020.07-Linux-x86_64.sh
./Anaconda3-2020.07-Linux-x86_64.sh
source ~/.bashrc
#conda create -n ros_env python=2.7 anaconda