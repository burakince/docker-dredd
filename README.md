# Dredd Docker

[![Docker Pulls](https://img.shields.io/docker/pulls/burakince/docker-dredd.svg)](https://hub.docker.com/r/burakince/docker-dredd/) [![dredd docker image build and push](https://github.com/burakince/docker-dredd/actions/workflows/docker-publish.yml/badge.svg)](https://github.com/burakince/docker-dredd/actions/workflows/docker-publish.yml)

# Usage

```
docker run -it --rm -v $(pwd):/blueprints --entrypoint dredd burakince/docker-dredd /blueprints/*.md http://localhost
```
