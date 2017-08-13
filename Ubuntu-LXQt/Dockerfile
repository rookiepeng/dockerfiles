# DESCRIPTION:	  LXQt on Ubuntu Linux
# AUTHOR:		  rookiepeng (https://zpeng.me)

FROM ubuntu
MAINTAINER rookiepeng

RUN apt-get update && \
    apt-get --no-install-recommends install \
    lxqt

RUN rm /var/lib/apt/lists/*

RUN useradd -m -d /home/ubuntu -s /bin/bash ubuntu
RUN echo "ubuntu:ubuntu" | chpasswd
RUN usermod -aG sudo ubuntu

USER ubuntu

#ENV HOME /home/alpine

ENTRYPOINT [ "startlxqt" ]