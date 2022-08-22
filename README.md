# Dredd

[![dredd docker image build and push](https://github.com/burakince/docker-dredd/actions/workflows/docker-publish.yml/badge.svg)](https://github.com/burakince/docker-dredd/actions/workflows/docker-publish.yml)
![Docker Pulls](https://img.shields.io/docker/pulls/burakince/docker-dredd)
![Docker Image Size (latest by date)](https://img.shields.io/docker/image-size/burakince/docker-dredd?sort=date)
![Docker Image Version (latest semver)](https://img.shields.io/docker/v/burakince/docker-dredd?sort=semver)
[![Artifact Hub](https://img.shields.io/endpoint?url=https://artifacthub.io/badge/repository/dredd)](https://artifacthub.io/packages/search?repo=dredd)

## Usage

```
docker run -it --rm -v $(pwd):/blueprints --entrypoint dredd burakince/docker-dredd /blueprints/*.md http://localhost
```
