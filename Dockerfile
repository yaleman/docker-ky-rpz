# Basic bind server using the ky-rpz thing.

FROM debian

LABEL maintainer="James Hodgkinson <james@terminaloutcomes.com>"

#ENV LANG en_US.UTF-8
#RUN /usr/sbin/update-locale LC_CTYPE=en_US.UTF-8

# do the updates and the installs
RUN apt-get update && apt-get -y upgrade
RUN apt-get -y install bind9 git wget sudo
# download ky-rpz
RUN git clone https://github.com/yaleman/ky-rpz.git /opt/ky-rpz
# copy the ky-rpz configuration file over
ADD ky-rpz.config /opt/ky-rpz/ky-rpz.config
# bind config files
ADD named.conf.local /etc/bind/
ADD named.conf.options /etc/bind/
# startup script
ADD startup.sh /opt/

# make this because well, we haven't installed squid and it's just easier.
RUN mkdir /etc/squid/

# expose DNS ports
EXPOSE 53
EXPOSE 53/udp

CMD ["bash","/opt/startup.sh"]
