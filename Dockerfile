FROM node:14.16.1-alpine3.13
MAINTAINER Raphael THIBIERGE

RUN apk add --no-cache git &&\
	git clone https://github.com/bahamas10/hueadm.git /app &&\
	apk del --no-cache git &&\
	cd /app &&\
	npm install --prod-only -g --no-cache

WORKDIR /app
