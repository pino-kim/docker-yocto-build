# Yocto Build Dockerfile

 FROM ubuntu:16.04

 MAINTAINER sungwon.pino "sungwon.pino@gmail.com"

# Update apt-get
 RUN apt-get update
 RUN apt-get dist-upgrade -y

# Install build dependency package for yocto
# From : Yocto Project Quick Start
# https://www.yoctoproject.org/docs/3.0/brief-yoctoprojectqs/brief-yoctoprojectqs.html

RUN apt-get install -y \    
        gawk \
        wget \
        git-core \
        diffstat \
        unzip \
        texinfo \
        gcc-multilib \
        build-essential \
        chrpath \
        socat \
        cpio \
        python \
        python3 \
        python3-pip \
        python3-pexpect \
        xz-utils \
        debianutils \
        iputils-ping \
        libsdl1.2-dev \
        xterm \
        locales \
        sudo \
        bc 

# Add i386 package
RUN dpkg --add-architecture i386 && apt-get update 


