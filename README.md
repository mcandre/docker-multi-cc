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

$ docker images | grep mcandre/docker-multi-cc
mcandre/docker-multi-cc                centos              0de47945d425        7 minutes ago       564 MB
mcandre/docker-multi-cc                opensuse            73efa0c3444f        37 minutes ago      515 MB
mcandre/docker-multi-cc                fedora              300bcef486eb        About an hour ago   1.04 GB
mcandre/docker-multi-cc                busybox             1ebdf3e8483f        6 hours ago         98.3 MB
mcandre/docker-multi-cc                alpine              34bd112dbf57        8 hours ago         153 MB
mcandre/docker-multi-cc                ubuntu              7396a7492c57        8 hours ago         265 MB
mcandre/docker-multi-cc                debian              6431a82ca1d1        10 hours ago        319 MB
```

# PUBLISH IMAGES

```console
$ make publish
```
