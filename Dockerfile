FROM archlinux:latest
RUN useradd -m hugo
RUN pacman-key --refresh-keys && \
    pacman -Syu --noconfirm && \
    pacman -Syu hugo --noconfirm
USER hugo
WORKDIR /home/hugo
ENTRYPOINT ["hugo"]
