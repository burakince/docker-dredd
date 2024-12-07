ARG NODE_VERSION=22
FROM node:${NODE_VERSION} as foundation

LABEL maintainer="Burak Ince <burak.ince@linux.org.tr>"

WORKDIR /usr/app

COPY package.json package-lock.json /usr/app/

RUN npm config set loglevel error
RUN npm install

FROM node:${NODE_VERSION}-slim

WORKDIR /usr/app

COPY --from=foundation /usr/app/node_modules /node_modules

ENV PATH ${PATH}:/node_modules/.bin

ENTRYPOINT [ "dredd", "--version" ]
