# Dredd Docker

[![Docker Pulls](https://img.shields.io/docker/pulls/burakince/docker-dredd.svg)](https://hub.docker.com/r/burakince/docker-dredd/)

# Usage

```
docker run -it --rm -v $(pwd):/blueprints --entrypoint dredd burakince/docker-dredd /blueprints/*.md http://localhost
```
