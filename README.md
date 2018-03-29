# Dredd Docker

[![Docker Stars](https://img.shields.io/docker/stars/burakince/docker-dredd.svg)](https://hub.docker.com/r/burakince/docker-dredd/) [![Docker Pulls](https://img.shields.io/docker/pulls/burakince/docker-dredd.svg)](https://hub.docker.com/r/burakince/docker-dredd/) [![Docker Automated build](https://img.shields.io/docker/automated/burakince/docker-dredd.svg)](https://hub.docker.com/r/burakince/docker-dredd/) [![Docker Build Status](https://img.shields.io/docker/build/burakince/docker-dredd.svg)](https://hub.docker.com/r/burakince/docker-dredd/)

Latest Dredd: [![npm version](https://badge.fury.io/js/dredd.svg)](https://www.npmjs.com/package/dredd)
Latest Node: [![node tag](https://img.shields.io/github/tag/nodejs/node.svg)](https://github.com/nodejs/node)

This image using Dredd 5.1.5 with Alpine Node 9.10.0

# Usage

```
docker run -it --rm -v $(pwd):/blueprints --entrypoint dredd burakince/docker-dredd /blueprints/*.md http://localhost
```
