FROM nvidia/cuda:10.2-runtime-ubuntu18.04
ARG DEBIAN_FRONTEND=noninteractive
RUN apt update; apt install -y curl gnupg2 lsb-core vim git tmux


# install ros noetic

RUN sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
RUN curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | apt-key add -
RUN apt update
RUN apt install -y ros-melodic-ros-base
RUN apt install -y python-rosdep python-rosinstall python-rosinstall-generator python-wstool build-essential
RUN apt install -y python-rosdep

RUN apt install -y ros-melodic-pcl-ros ros-melodic-serial

RUN rosdep init
RUN rosdep update
