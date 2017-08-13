# DESCRIPTION:	  xfce4 desktop environment on Alpine Linux
# AUTHOR:		  rookiepeng (https://zpeng.me)

FROM alpine
MAINTAINER rookiepeng

#RUN apk add --no-cache --update \
    #sudo \
#    alpine-desktop \
#    xfce4 \
#    gvfs \
#    gnome-icon-theme

RUN apk update && apk add alpine-desktop xfce4

CMD startxfce4

#RUN adduser -D -h /home/alpine -s /bin/sh alpine
#RUN echo "alpine:alpine" | chpasswd
#RUN echo '%alpine ALL=(ALL) ALL' >> /etc/sudoers

#USER alpine

#ENV HOME /home/alpine

#CMD startxfce4