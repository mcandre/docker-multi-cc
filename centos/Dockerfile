FROM library/centos:7
COPY ngompa-musl-libc-epel-7.repo /etc/yum.repos.d/ngompa-musl-libc-epel-7.repo
RUN yum update -y && \
    yum install -y \
        gcc \
        musl-gcc \
        dietlibc-devel \
        uClibc-devel && \
    yum clean all
