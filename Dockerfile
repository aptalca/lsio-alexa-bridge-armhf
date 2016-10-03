FROM lsiobase/alpine.armhf
MAINTAINER aptalca

# install packages
RUN \
 apk add --no-cache \
	openjdk8-jre \
	openssl

# copy local files
COPY root/ /

# ports and volumes
VOLUME /config