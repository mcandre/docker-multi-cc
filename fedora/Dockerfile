FROM fedora:25
RUN dnf update -y && \
    dnf install -y dnf-plugins-core && \
    dnf copr -y enable ngompa/musl-libc && \
    dnf config-manager -y --add-repo http://download.opensuse.org/repositories/home:Ledest:misc/Fedora_25/home:Ledest:misc.repo && \
    dnf update -y && \
    dnf install -y \
        gcc \
        musl-devel \
        dietlibc-devel \
        klibc-devel \
        uClibc-devel && \
    dnf clean metadata
