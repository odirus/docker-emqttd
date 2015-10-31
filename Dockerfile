FROM ubuntu:14.04
MAINTAINER odirus "odirus@163.com"
RUN apt-get update
RUN apt-get install unzip -y
RUN apt-get install wget -y
RUN cd /opt && wget http://emqtt.io/static/brokers/emqttd-ubuntu64-0.12.3-beta-20151022.zip && unzip emqttd-ubuntu64-0.12.3-beta-20151022.zip && rm emqttd-ubuntu64-0.12.3-beta-20151022.zip
ADD boot.sh /opt/sh/boot.sh

EXPOSE  1883 8083 18083
ENTRYPOINT ["/bin/bash", "/opt/sh/boot.sh"]