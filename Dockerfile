FROM node:9.7.0-alpine

MAINTAINER Burak Ince <burak.ince@linux.org.tr>

RUN apk update \
  && apk add --no-cache git make gcc g++ python \
  && npm config set loglevel error \
  && npm install dredd@5.1.3 \
  && apk del git make gcc g++ python \
  && rm -rf /var/cache/apk/*

ENV PATH ${PATH}:/node_modules/.bin

ENTRYPOINT ["dredd","--version"]
