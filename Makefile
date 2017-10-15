.PHONY: mcandre/docker-multi-cc-debian mcandre/docker-multi-cc-ubuntu mcandre/docker-multi-cc-alpine mcandre/docker-multicc-opensuse mcandre/docker-multi-cc-fedora mcandre/docker-multi-cc-centos mcandre/docker-multi-cc-arch mcandre/docker-multi-cc-slackware mcandre/docker-multi-cc-mageia mcandre/docker-multi-cc-openwrt

all: mcandre/docker-multi-cc-debian mcandre/docker-multi-cc-ubuntu mcandre/docker-multi-cc-alpine mcandre/docker-multi-cc-opensuse mcandre/docker-multi-cc-fedora mcandre/docker-multi-cc-centos mcandre/docker-multi-cc-arch mcandre/docker-multi-cc-slackware mcandre/docker-multi-cc-mageia mcandre/docker-multi-cc-openwrt

mcandre/docker-multi-cc-debian: debian/Dockerfile
	docker build -t mcandre/docker-multi-cc:debian debian

mcandre/docker-multi-cc-ubuntu: ubuntu/Dockerfile
	docker build -t mcandre/docker-multi-cc:ubuntu ubuntu

mcandre/docker-multi-cc-alpine: alpine/Dockerfile
	docker build -t mcandre/docker-multi-cc:alpine alpine

mcandre/docker-multi-cc-opensuse: opensuse/Dockerfile
	docker build -t mcandre/docker-multi-cc:opensuse opensuse

mcandre/docker-multi-cc-fedora: fedora/Dockerfile
	docker build -t mcandre/docker-multi-cc:fedora fedora

mcandre/docker-multi-cc-centos: centos/Dockerfile
	docker build -t mcandre/docker-multi-cc:centos centos

mcandre/docker-multi-cc-arch: arch/Dockerfile
	docker build -t mcandre/docker-multi-cc:arch arch

mcandre/docker-multi-cc-slackware: slackware/Dockerfile
	docker build -t mcandre/docker-multi-cc:slackware slackware

mcandre/docker-multi-cc-mageia: mageia/Dockerfile
	docker build -t mcandre/docker-multi-cc:mageia mageia

mcandre/docker-multi-cc-openwrt: openwrt/Dockerfile
	docker build -t mcandre/docker-multi-cc:openwrt openwrt

publish-debian: mcandre/docker-multi-cc-debian
	docker push mcandre/docker-multi-cc:debian

publish-ubuntu: mcandre/docker-multi-cc-ubuntu
	docker push mcandre/docker-multi-cc:ubuntu

publish-alpine: mcandre/docker-multi-cc-alpine
	docker push mcandre/docker-multi-cc:alpine

publish-opensuse: mcandre/docker-multi-cc-opensuse
	docker push mcandre/docker-multi-cc:opensuse

publish-fedora: mcandre/docker-multi-cc-fedora
	docker push mcandre/docker-multi-cc:fedora

publish-centos: mcandre/docker-multi-cc-centos
	docker push mcandre/docker-multi-cc:centos

publish-arch: mcandre/docker-multi-cc-arch
	docker push mcandre/docker-multi-cc:arch

publish-slackware: mcandre/docker-multi-cc-slackware
	docker push mcandre/docker-multi-cc:slackware

publish-mageia: mcandre/docker-multi-cc-mageia
	docker push mcandre/docker-multi-cc:mageia

publish-openwrt: mcandre/docker-multi-cc-openwrt
	docker push mcandre/docker-multi-cc:openwrt

publish: publish-debian publish-ubuntu publish-alpine publish-opensuse publish-fedora publish-centos publish-arch publish-slackware publish-mageia publish-openwrt
