#!/bin/bash

# File      :  install_ros_noetic.sh
# Time      :  2021/12/05
# Author    :  Yujie He
# Contact   :  he-yujie@outlook.com
# State     :  Deployed
# Reference :  https://github.com/davidoort/setup/blob/master/ubuntu/scripts/robotics.sh

# ref:
#   ROS variants: https://www.ros.org/reps/rep-0142.html#id7

set -e
set -x

# has GUI or not
read -p "Has GUI (y/n)?" choice
case "$choice" in
y | Y) echo "yes" ;;
n | N) echo "no" ;;
*) echo "invalid" ;;
esac

# ROS
if [ -f "/etc/apt/sources.list.d/ros-latest.list" ]; then
    echo "ROS package repositories already installed. skipping."
    # exit 0
else
    echo "#### Installing ROS package repositories..." $'\n'

    echo "#### Setup your sources.list"
    sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'

    # sudo apt install curl
    echo "#### Set up your keys"
    curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -
fi

sudo apt-get update

case "$choice" in
y | Y) echo "#### Install full version" &&
    sudo DEBIAN_FRONTEND=noninteractive apt-get install -y ros-noetic-desktop-full ;;
n | N) echo "#### Install desktop version" &&
    sudo DEBIAN_FRONTEND=noninteractive apt-get install -y ros-noetic-desktop ;;
*) echo "invalid" ;;
esac

echo "#### Environment setup"
echo -e "\n# ROS" >>~/.bashrc
echo "source /opt/ros/noetic/setup.bash" >>~/.bashrc
source ~/.bashrc
# echo "source /opt/ros/melodic/setup.bash" | sudo tee -a /etc/bash.bashrc >/dev/null
# source /opt/ros/melodic/setup.bash

echo "#### Dependencies for building packages"
# default is `python3` without `python`` installed
python3 -m pip install --upgrade pip
sudo apt install -y python3-rosdep python3-rosinstall \
    python3-rosinstall-generator python3-wstool build-essential

echo "#### Initialize rosdep"
sudo rosdep init
rosdep update

# https://catkin-tools.readthedocs.io/en/latest/installing.html
echo "#### Initialize catkin_tools"
sudo apt-get install -y python3-catkin-tools
