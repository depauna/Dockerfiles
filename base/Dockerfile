FROM centos:latest
RUN yum update -y && \
    yum install -y git wget nc net-tools which moreutils bzip2
VOLUME [ "/sys/fs/cgroup" ]