FROM ubuntu:14.04

MAINTAINER xiongmao@huanlguang.com

#move files
RUN mkdir -p /root/unzip/
ADD deploy/unzip/deploy/* /root/unzip/

#set env variables
EXPOSE 9100

#start service
WORKDIR /root/unzip

ENTRYPOINT ./qufop qufop.conf