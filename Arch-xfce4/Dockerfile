FROM base/archlinux:latest
MAINTAINER rookiepeng

RUN pacman --sync --noconfirm --refresh --sysupgrade && \
    pacman --sync --noconfirm xfce4 \
    gvfs \
    sudo \
    zsh \
    && \
    find /var/cache/pacman/pkg -mindepth 1 -delete

RUN useradd -m -G wheel -d /home/archie -s /bin/zsh archie

USER archie

ENV HOME /home/archie

CMD ["zsh"]