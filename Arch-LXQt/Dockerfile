# Usage for windows
#
# docker run -it `
# --net bridge `
# -e DISPLAY=10.0.75.1:0 `
# -v /c/Docker/archie:/root `
# -h archdocker `
# --name arch-lxqt `
# rookiepeng/arch-lxqt

FROM base/archlinux:latest
MAINTAINER rookiepeng

RUN pacman --sync --noconfirm --refresh --sysupgrade && \
    pacman --sync --noconfirm lxqt \
    breeze-icons  \
    #sudo \
    gvfs \
    && \
    find /var/cache/pacman/pkg -mindepth 1 -delete

# add a user (archie) to eliminate root warning
RUN useradd -m -G wheel -d /home/archie -s /bin/bash archie
RUN echo "archie:archie" | chpasswd

USER archie

ENV HOME /home/archie