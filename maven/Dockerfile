FROM depauna/base:latest
RUN yum install -y java-1.8.0-openjdk-devel
RUN cd /opt && \
    wget -q http://apache.belnet.be/maven/maven-3/3.6.1/binaries/apache-maven-3.6.1-bin.tar.gz && \
    tar xzvf apache-maven-3.6.1-bin.tar.gz
ENV PATH "/opt/apache-maven-3.6.1/bin/:$PATH"