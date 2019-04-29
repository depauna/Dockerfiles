FROM centos:7
RUN yum update -y && \
    yum install -y httpd nc bind-utils
VOLUME [ "/sys/fs/cgroup" ]
CMD httpd -X
