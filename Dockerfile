ARG NODE_VERSION=16.15.1

FROM node:${NODE_VERSION} as foundation

LABEL maintainer="Burak Ince <burak.ince@linux.org.tr>"

WORKDIR /usr/app

ARG DREDD_VERSION=14.1.0
ARG NPM_VERSION=8.13.2

RUN npm config set loglevel error
RUN npm install -g npm@$NPM_VERSION
RUN npm install dredd@$DREDD_VERSION

FROM node:${NODE_VERSION}-slim

WORKDIR /usr/app

COPY --from=foundation /usr/app/node_modules /node_modules

ENV PATH ${PATH}:/node_modules/.bin

ENTRYPOINT [ "dredd", "--version" ]
