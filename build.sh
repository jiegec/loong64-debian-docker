#!/bin/sh
rm -rf rootfs
debootstrap --no-check-gpg --arch=loong64 --variant=buildd --foreign --include=ca-certificates,apt-transport-https,debian-ports-archive-keyring --extra-suites=unreleased unstable rootfs http://mirror.sjtu.edu.cn/debian-ports
arch-chroot rootfs /debootstrap/debootstrap --second-stage
arch-chroot rootfs apt -f -y install
docker build -t jiegec/loong64-debian .
