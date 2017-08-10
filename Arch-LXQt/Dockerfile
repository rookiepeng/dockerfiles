FROM base/archlinux:latest
MAINTAINER rookiepeng

RUN pacman --sync --noconfirm --refresh --sysupgrade && \
    pacman --sync --noconfirm lxqt \
    breeze-icons  \
    gvfs \
    zsh \
    && \
    find /var/cache/pacman/pkg -mindepth 1 -delete