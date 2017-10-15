# mcandre/docker-multi-cc: Docker images for building alt-libc applications

# ABOUT

The included base images serve as an example of how to install C compiler toolchains, for various Linux flavors.

Most Linux distributions run GNU libc binaries and target GNU libc by default in gcc. Other distributions are notable for supporting compilation targeting alternative libc's:

* Debian: GNU glibc
* Alpine: musl
* OpenWrt: uClibc

Note: Once an application is compiled, the runtime container does not need a full gcc installation. Instead, a much smaller base image like [busybox](https://hub.docker.com/_/busybox/) can run the application. See `busybox:glibc`, `busybox:musl`, `busybox:uclibc` tags for the different libc's imported by your application.

If the application is compiled completely statically, including the libc, then the application can be run from a base image `scratch` starting at size zero bytes, however there are often security hazards to statically linking any libc, so beware!

# EXAMPLE

```console
$ docker pull mcandre/docker-multi-cc:ubuntu

$ docker run mcandre/docker-multi-cc:ubuntu musl-gcc --version
gcc (Ubuntu 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609
Copyright (C) 2015 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
```

# DOCKERHUB

https://hub.docker.com/r/mcandre/docker-multi-cc/

# REQUIREMENTS

* [Docker](https://www.docker.com)

# BUILD IMAGES

```console
$ make

$ docker images | grep multi-cc
mcandre/docker-multi-cc                fedora              3607949c5256        2 minutes ago       407 MB
mcandre/docker-multi-cc                ubuntu              f483c3a80000        3 minutes ago       145 MB
mcandre/docker-multi-cc                opensuse            4eefc910fa32        4 minutes ago       346 MB
mcandre/docker-multi-cc                openwrt             20e50b5a1969        40 minutes ago      75.4MB
mcandre/docker-multi-cc                centos              1447db0453b0        8 minutes ago       297 MB
mcandre/docker-multi-cc                mageia              d39eeecc4998        8 minutes ago       322 MB
mcandre/docker-multi-cc                alpine              3f601c41643e        13 minutes ago      101 MB
mcandre/docker-multi-cc                debian              6431a82ca1d1        20 hours ago        319 MB
mcandre/docker-multi-cc                arch                84cfc040bc7b        2 hours ago         898 MB
mcandre/docker-multi-cc                slackware           0c16b3ae7f6e        About a minute ago   511 MB
```

# PUBLISH IMAGES

```console
$ make publish
```
