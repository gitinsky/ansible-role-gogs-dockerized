FROM gitinsky/baseimage:0.1.1
MAINTAINER Git In Sky <support@gitinsky.com>
EXPOSE 22
EXPOSE 80

RUN apt-get update && apt-get -y install git wget unzip && cd / && wget http://gogs.dn.qbox.me/gogs_v0.5.11_linux_amd64.zip && unzip gogs_v0.5.11_linux_amd64.zip
#VOLUME /etc/bind/zones/master
#ADD bind.rb /etc/eye/bind.rb
