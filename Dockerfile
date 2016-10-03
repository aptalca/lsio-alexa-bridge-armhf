FROM lsiobase/alpine.armhf
MAINTAINER aptalca

# install packages
RUN \
 sed -i -e 's/v3\.4/edge/g' /etc/apk/repositories && \
 apk add --no-cache \
	curl \
	openjdk8-jre \
	openssl

# copy local files
COPY root/ /

# ports and volumes
VOLUME /config