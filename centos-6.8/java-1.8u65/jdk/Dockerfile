# CentOS w/ Oracle JDK
FROM centos:6.8
MAINTAINER Kevin Stock <kevin@toolhouse.com>

ENV JDK_VERSION 8u65
ENV BUILD_VERSION b17

RUN yum -y upgrade && \
    yum -y install wget && \
    wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie;" http://download.oracle.com/otn-pub/java/jdk/$JDK_VERSION-$BUILD_VERSION/jdk-$JDK_VERSION-linux-x64.rpm -O /tmp/jdk-$JDK_VERSION-linux-x64.rpm && \
    yum -y install /tmp/jdk-$JDK_VERSION-linux-x64.rpm && \
    rm /tmp/jdk-$JDK_VERSION-linux-x64.rpm && \
    yum clean all

ENV JAVA_HOME /usr/java/latest
