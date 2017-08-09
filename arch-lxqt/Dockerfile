# Dockerfile for an Arch instance with full desktop

FROM base/archlinux:latest
MAINTAINER rookiepeng

RUN pacman --sync --noconfirm --refresh --sysupgrade && \
    pacman --sync --noconfirm lxqt && \
    find /var/cache/pacman/pkg -mindepth 1 -delete