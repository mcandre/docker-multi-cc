FROM gcr.io/google-containers/ubuntu-slim:0.9
RUN apt-get update && \
    apt-get install -y \
        gcc \
        musl-tools \
        dietlibc-dev \
        libklibc-dev && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
