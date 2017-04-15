.PHONY: mcandre/docker-multi-cc-debian mcandre/docker-multi-cc-ubuntu mcandre/docker-multi-cc-alpine mcandre/docker-multicc-opensuse mcandre/docker-multi-cc-busybox

all: mcandre/docker-multi-cc-debian mcandre/docker-multi-cc-ubuntu mcandre/docker-multi-cc-alpine mcandre/docker-multi-cc-opensuse mcandre/docker-multi-cc-busybox

mcandre/docker-multi-cc-debian: debian/Dockerfile
	sh -c "cd debian && docker build -t mcandre/docker-multi-cc:debian ."

mcandre/docker-multi-cc-ubuntu: ubuntu/Dockerfile
	sh -c "cd ubuntu && docker build -t mcandre/docker-multi-cc:ubuntu ."

mcandre/docker-multi-cc-alpine: alpine/Dockerfile
	sh -c "cd alpine && docker build -t mcandre/docker-multi-cc:alpine ."

mcandre/docker-multi-cc-opensuse: opensuse/Dockerfile
	sh -c "cd opensuse && docker build -t mcandre/docker-multi-cc:opensuse ."

mcandre/docker-multi-cc-busybox: busybox/Dockerfile
	sh -c "cd busybox && docker build -t mcandre/docker-multi-cc:busybox ."

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

publish: publish-debian publish-ubuntu publish-alpine publish-opensuse publish-busybox
