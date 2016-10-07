FROM lsiobase/alpine.armhf
MAINTAINER aptalca

# install packages
RUN \
 apk add --no-cache \
	curl \
	openssl && \

 apk add --no-cache \
	--repository http://nl.alpinelinux.org/alpine/edge/community  \
	openjdk8-jre

# copy local files
COPY root/ /

# ports and volumes
VOLUME /config
