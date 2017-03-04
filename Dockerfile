FROM ubuntu:14.04
MAINTAINER Said Sef <saidsef@gmail.com>

RUN apt-get update
RUN apt-get install -y curl git

# Information Of Package
ENV PKG_ALIAS=etcd
ENV PKG_VERSION=etcd-v0.4.6
ENV PKG_PACKAGE=$PKG_VERSION-linux-amd64.tar.gz
ENV PKG_LINK=https://github.com/coreos/etcd/releases/download/v0.4.6/$PKG_PACKAGE

# Etcd
RUN cd /tmp && \
 curl -O -L $PKG_LINK && \
 tar -zxf /tmp/$PKG_PACKAGE && \
 mv /tmp/$PKG_VERSION-linux-amd64 /usr/local/$PKG_VERSION && \
 ln -s /usr/local/$PKG_VERSION /usr/local/$PKG_ALIAS

# Clean up system
RUN rm -rf /tmp/* /var/tmp/*

EXPOSE  4001 7001

CMD ["/usr/local/etcd/etcd"]
