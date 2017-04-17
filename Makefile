.PHONY: mcandre/docker-multi-cc-debian mcandre/docker-multi-cc-ubuntu mcandre/docker-multi-cc-alpine mcandre/docker-multicc-opensuse mcandre/docker-multi-cc-busybox mcandre/docker-multi-cc-fedora mcandre/docker-multi-cc-centos

all: mcandre/docker-multi-cc-debian mcandre/docker-multi-cc-ubuntu mcandre/docker-multi-cc-alpine mcandre/docker-multi-cc-opensuse mcandre/docker-multi-cc-busybox mcandre/docker-multi-cc-fedora mcandre/docker-multi-cc-centos

mcandre/docker-multi-cc-debian: debian/Dockerfile
	docker build -t mcandre/docker-multi-cc:debian debian

mcandre/docker-multi-cc-ubuntu: ubuntu/Dockerfile
	docker build -t mcandre/docker-multi-cc:ubuntu ubuntu

mcandre/docker-multi-cc-alpine: alpine/Dockerfile
	docker build -t mcandre/docker-multi-cc:alpine alpine

mcandre/docker-multi-cc-opensuse: opensuse/Dockerfile
	docker build -t mcandre/docker-multi-cc:opensuse opensuse

mcandre/docker-multi-cc-busybox: busybox/Dockerfile
	docker build -t mcandre/docker-multi-cc:busybox busybox

mcandre/docker-multi-cc-fedora: fedora/Dockerfile
	docker build -t mcandre/docker-multi-cc:fedora fedora

mcandre/docker-multi-cc-centos: centos/Dockerfile
	docker build -t mcandre/docker-multi-cc:centos centos

publish-debian: mcandre/docker-multi-cc-debian
	docker push mcandre/docker-multi-cc:debian

publish-ubuntu: mcandre/docker-multi-cc-ubuntu
	docker push mcandre/docker-multi-cc:ubuntu

publish-alpine: mcandre/docker-multi-cc-alpine
	docker push mcandre/docker-multi-cc:alpine

publish-opensuse: mcandre/docker-multi-cc-opensuse
	docker push mcandre/docker-multi-cc:opensuse

publish-busybox: mcandre/docker-multi-cc-busybox
	docker push mcandre/docker-multi-cc:busybox

publish-fedora: mcandre/docker-multi-cc-fedora
	docker push mcandre/docker-multi-cc:fedora

publish-centos: mcandre/docker-multi-cc-centos
	docker push mcandre/docker-multi-cc:centos

publish: publish-debian publish-ubuntu publish-alpine publish-opensuse publish-busybox publish-fedora publish-centos
