FROM node:9.3.0-alpine

MAINTAINER Burak Ince <burak.ince@linux.org.tr>

RUN apk add --no-cache git make gcc g++ python \
  && npm config set loglevel error \
  && npm install dredd \
  && apk del git make gcc g++ python

ENV PATH ${PATH}:/node_modules/.bin

ENTRYPOINT ["dredd","--version"]
