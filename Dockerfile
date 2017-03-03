FROM lsiobase/alpine.armhf:3.5
MAINTAINER aptalca

# install packages
RUN \
 apk add --no-cache \
	curl \
	openssl \
	openjdk8-jre

# copy local files
COPY root/ /

# ports and volumes
VOLUME /config
