FROM dock0/arch
RUN echo -e "[multilib]\nInclude = /etc/pacman.d/mirrorlist" >> /etc/pacman.conf && \
    pacman -Syu && \
    yes | pacman -S \
        gcc-multilib \
        musl \
        dietlibc && \
    yes | pacman -Sc
