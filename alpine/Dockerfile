FROM library/alpine:edge
RUN echo http://nl.alpinelinux.org/alpine/edge/testing >> /etc/apk/repositories && \
    apk add -U \
        gcc \
        musl-dev \
        dietlibc
