# Filename: Dockerfile
# Author: Kevin Kredit
# License: Creative Commons Zero v1.0 Universal
# Description:
#   Dockerfile to encapsulate build envrinments

# Image settings
FROM ubuntu:18.04

ARG USER_UID=1000
ARG USER_GID=1000
ARG USER_NAME=builder
ARG MNT_PNT=/host

ENV DEBIAN_FRONTEND=noninteractive


# Basic setup
RUN \
    # User setup
    groupadd -g $USER_GID $USER_NAME && \
    useradd --create-home -s /bin/bash -u $USER_UID -g $USER_GID $USER_NAME && \
    mkdir /home/$USER_NAME/bin && \
    echo "export PATH=\$PATH:/home/$USER_NAME/bin" >> /home/$USER_NAME/.bashrc && \
    # Updates
    apt-get update && \
    apt-get upgrade -y

# Basic tools
RUN apt-get install -y apt-utils && \
    apt-get install -y \
        make \
        curl \
        wget \
        git \
        bc \
        time

# Languages
###########

# C
RUN apt-get install -y --no-install-recommends \
        gcc

# Clojure
RUN apt-get install -y --no-install-recommends \
        default-jdk \
        rlwrap && \
    wget -q https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein && \
    chmod +x lein && \
    mv lein /home/$USER_NAME/bin/ && \
    curl -O https://download.clojure.org/install/linux-install-1.10.1.536.sh && \
    chmod +x linux-install-1.10.1.536.sh && \
    ./linux-install-1.10.1.536.sh && \
    rm ./linux-install-1.10.1.536.sh

# Go
RUN URL="$(curl -s https://golang.org/dl/ | grep "linux-amd64.tar.gz" | head -1 | cut -d\" -f4)" && \
    FILE="$(echo $URL | rev | cut -d/ -f1 | rev)" && \
    INST_DIR=/usr/local && \
    wget -q $URL && \
    tar -C $INST_DIR -xzf $FILE && \
    rm $FILE && \
    echo "export PATH=\$PATH:$INST_DIR/go/bin:/home/$USER_NAME/go/bin" >> /home/$USER_NAME/.bashrc

# Haskell
RUN apt-get install -y --no-install-recommends \
        haskell-platform

# Rust
USER $USER_NAME
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
USER root
RUN echo "export PATH=\$PATH:/home/$USER_NAME/.cargo/bin" >> /home/$USER_NAME/.bashrc

#############
# Final steps
RUN mkdir /host
WORKDIR /host
USER $USER_NAME
RUN /usr/local/go/bin/go get -u github.com/boyter/scc
