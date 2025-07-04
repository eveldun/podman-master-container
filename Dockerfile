FROM rockylinux:10.0
RUN dnf update -y && dnf install podman-docker -y
RUN useradd -m eveldun
USER eveldun 
ENTRYPOINT --device /dev/fuse --security label=disable ["podman","run","-it","fedora"]

