#!/usr/bin/env bash
cd ~
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu focal main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
sudo apt update && sudo apt install -y ros-noetic-desktop-full
sudo rosdep init
rosdep update
echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc
source ~/.bashrc
sudo apt update && sudo apt install -y python-rosinstall python-rosinstall-generator python-wstool build-essential
# Install ROS controller
sudo apt install -y ros-noetic-gazebo*
sudo apt install -y ros-noetic-ros-control ros-noetic-ros-controllers
sudo apt install -y ros-noetic-trac-ik
# Install ROS industrial
sudo apt install -y ros-noetic-industrial-core
sudo apt install -y ros-noetic-abb
sudo apt install -y ros-noetic-universal-robot
sudo apt install -y ros-noetic-ros-canopen
# Install MoveIt
sudo apt install -y ros-noetic-moveit*
# Update Gazebo Model
mkdir -p ~/.gazebo
git clone https://github.com/osrf/gazebo_models
mv ~/gazebo_models ~/.gazebo/models