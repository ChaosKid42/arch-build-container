FROM quay.io/archlinux/archlinux:base-devel

COPY docker-entrypoint.sh /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]

RUN pacman -Syu --noconfirm openssh git less vi vim pacman-contrib nodejs npm desktop-file-utils gendesk

RUN useradd -m -s /bin/bash christoph
USER christoph
WORKDIR /home/christoph

ENV LANG=de_DE.UTF-8
CMD ["/usr/bin/bash"]
