FROM alpine:latest
MAINTAINER Steve Williams <mrsixw@gmail.com>

RUN apk update && apk upgrade && \
    apk add --update  bash jq

COPY ./check /opt/resource/
COPY ./in /opt/resource/
COPY ./out /opt/resource/
