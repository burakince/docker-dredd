# docker-dredd
Dredd with Alpine Node 9.3.0 Dockerfile

# Usage

```
docker run -it --rm -v $(pwd):/blueprints --entrypoint dredd burakince/docker-dredd /blueprints/*.md http://localhost
```

