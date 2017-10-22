FROM library/debian:stretch
RUN apt-get update && \
    apt-get install -y \
        build-essential \
        musl-tools \
        dietlibc-dev \
        libklibc-dev && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
