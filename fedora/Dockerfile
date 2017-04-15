FROM fedora:24
RUN dnf update -y && \
    dnf install -y dnf-plugins-core && \
    dnf copr -y enable ngompa/musl-libc && \
    dnf config-manager -y --add-repo http://download.opensuse.org/repositories/home:Ledest:misc/Fedora_25/home:Ledest:misc.repo && \
    dnf update -y && \
    dnf install -y \
        @development-tools \
        musl-devel \
        dietlibc-devel \
        klibc-devel \
        uClibc-devel
