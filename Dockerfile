FROM quay.io/archlinux/archlinux:base-devel

COPY docker-entrypoint.sh /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]

RUN pacman -Syu --noconfirm openssh git less vim pacman-contrib

RUN useradd -m -s /bin/bash christoph
USER christoph
WORKDIR /home/christoph

ENV LANG=de_DE.UTF-8
CMD ["/usr/bin/bash"]
