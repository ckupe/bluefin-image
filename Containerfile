FROM ghcr.io/ublue-os/bluefin-dx:latest

COPY build.sh /tmp/build.sh

RUN mkdir -p /var/lib/alternatives && \
    /tmp/build.sh && \
    rpm-ostree install zsh \
    neovim \
    alacritty \
    tmux \
    htop && \
    ostree container commit
    
