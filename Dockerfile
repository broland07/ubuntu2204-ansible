FROM ubuntu:22.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt update && apt upgrade -y && apt install -y nano \
                                                htop \
                                                iftop \
                                                nload \
                                                python3 \
                                                nfs-common \
                                                git \
                                                rsync

RUN apt install software-properties-common -y
RUN add-apt-repository --yes --update ppa:ansible/ansible

# Install Ansible
RUN apt install ansible -y

RUN ansible --version

CMD ["/bin/bash"]

