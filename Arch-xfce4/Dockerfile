FROM base/archlinux:latest
MAINTAINER rookiepeng

RUN pacman --sync --noconfirm --refresh --sysupgrade && \
    pacman --sync --noconfirm xfce4 \
    gvfs \
    zsh \
    && \
    find /var/cache/pacman/pkg -mindepth 1 -delete