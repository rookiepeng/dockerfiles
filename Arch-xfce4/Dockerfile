# Usage for windows
#
# docker run -it `
# --net bridge `
# -e DISPLAY=10.0.75.1:0 `
# -v /c/Docker/xfce4:/home/archie `
# -h archdocker `
# --name arch-xfce4 `
# rookiepeng/arch-xfce4

FROM base/archlinux:latest
MAINTAINER rookiepeng

RUN pacman --sync --noconfirm --refresh --sysupgrade && \
    pacman --sync --noconfirm xfce4 \
    gvfs \
    sudo \
    && \
    find /var/cache/pacman/pkg -mindepth 1 -delete

# add a user (archie) to eliminate root warning
RUN useradd -m -G wheel -d /home/archie -s /bin/bash archie
RUN echo "archie:archie" | chpasswd
RUN echo '%wheel ALL=(ALL) ALL' >> /etc/sudoers

USER archie

ENV HOME /home/archie