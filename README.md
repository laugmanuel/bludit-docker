# laugmanuel/bludit-docker

[![badge1](https://img.shields.io/docker/cloud/build/laugmanuel/bludit?style=flat-square&logo=appveyor)](https://hub.docker.com/r/laugmanuel/bludit)
[![badge2](https://img.shields.io/docker/cloud/automated/laugmanuel/bludit?style=flat-square&logo=appveyor)](https://hub.docker.com/r/laugmanuel/bludit)
[![badge3](https://img.shields.io/docker/pulls/laugmanuel/bludit?style=flat-square&logo=appveyor)](https://hub.docker.com/r/laugmanuel/bludit)

# What is this repository?

This repository serves as a base for the `laugmanuel/bludit` Docker image: https://github.com/laugmanuel/bludit-docker

The image uses a sane nginx config from [h5bp](https://github.com/h5bp/server-configs-nginx) and some modified settings based on [Bludit Nginx config](https://docs.bludit.com/en/webservers/nginx).

# Information

- `FROM: alpine:stable`
- Nginx
- PHP7 + FPM

# Example

```sh
docker run -p 8080:8080 \
  -v $(pwd)/bl-plugins:/usr/share/nginx/html/bl-plugins \
  -v $(pwd)/bl-themes:/usr/share/nginx/html/bl-themes \
  -v $(pwd)/bl-content:/usr/share/nginx/html/bl-content \
  -it laugmanuel/bludit:latest
```
