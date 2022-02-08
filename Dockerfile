FROM osrf/ros:noetic-desktop-full
ARG DEBIAN_FRONTEND=noninteractive
RUN apt update; apt install -y curl gnupg2 lsb-release vim git tmux ros-noetic-serial
