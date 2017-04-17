# mcandre/docker-multi-cc: Docker images for building alt-libc applications

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
mcandre/docker-multi-cc                centos              1447db0453b0        8 minutes ago       297 MB
mcandre/docker-multi-cc                busybox             9ccc4c6337c5        11 minutes ago      98.1 MB
mcandre/docker-multi-cc                alpine              3f601c41643e        13 minutes ago      101 MB
mcandre/docker-multi-cc                debian              6431a82ca1d1        20 hours ago        319 MB
mcandre/docker-multi-cc                arch                84cfc040bc7b        2 hours ago         898 MB
```

# PUBLISH IMAGES

```console
$ make publish
```
