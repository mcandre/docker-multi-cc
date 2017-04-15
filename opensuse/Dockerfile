FROM opensuse:leap
RUN zypper addrepo http://download.opensuse.org/repositories/home:Ledest:misc/openSUSE_Leap_42.2/home:Ledest:misc.repo && \
    zypper --gpg-auto-import-keys refresh && \
    zypper install -y -t pattern devel_basis && \
    zypper install -y \
        musl-devel \
        dietlibc \
        klibc-devel
