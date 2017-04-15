FROM centos:7
COPY ngompa-musl-libc-epel-7.repo /etc/yum.repos.d/ngompa-musl-libc-epel-7.repo
RUN yum update -y && \
    yum groupinstall -y "Development Tools" && \
    yum install -y \
        musl-gcc \
        dietlibc-devel \
        uClibc-devel
