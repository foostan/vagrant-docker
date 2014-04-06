FROM ubuntu

MAINTAINER foostan foostan27@gmail.com

RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get update
RUN apt-get install unzip -y wget

# install serf
RUN wget https://dl.bintray.com/mitchellh/serf/0.5.0_linux_amd64.zip --no-check-certificate
RUN unzip 0.5.0_linux_amd64.zip
RUN mv serf /usr/local/bin

# set files
ADD handle.sh /
ADD serf.json /
