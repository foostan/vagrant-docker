FROM ubuntu

MAINTAINER foostan foostan27@gmail.com

RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y unzip wget

# install serf
RUN wget https://dl.bintray.com/mitchellh/consul/0.2.1_linux_amd64.zip -O consul.zip
RUN consul.zip
RUN chmod +x consul
RUN mv consul /usr/bin/consul
