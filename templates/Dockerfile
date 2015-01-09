FROM gitinsky/baseimage:0.1.1
MAINTAINER Git In Sky <support@gitinsky.com>
EXPOSE 22
EXPOSE 3000

RUN apt-get update && apt-get -y install git wget unzip && cd / && wget http://ns2.1888.spb.ru/gogs_v0.5.11_linux_amd64.zip && unzip gogs_v0.5.11_linux_amd64.zip && mkdir /gogs-repositories && mkdir -p /gogs/custom/conf
VOLUME /gogs-repositories/
ADD app.ini /gogs/custom/conf/app.ini
ADD gogs.rb /etc/eye/gogs.rb
ADD gogs.sh /root/gogs.sh
