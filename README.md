# laugmanuel/bludit-docker

[![badge1](https://img.shields.io/docker/pulls/laugmanuel/bludit?logo=appveyor)](https://hub.docker.com/r/laugmanuel/grav)
[![badge2](https://github.com/laugmanuel/bludit-docker/workflows/ci/badge.svg)](https://hub.docker.com/r/laugmanuel/grav)

# What is this repository?

This repository serves as a base for the `laugmanuel/bludit` Docker image: https://github.com/laugmanuel/bludit-docker

The image uses a sane nginx config from [h5bp](https://github.com/h5bp/server-configs-nginx) and some modified settings based on [Bludit Nginx config](https://docs.bludit.com/en/webservers/nginx).

It provides a *automated weekly build* to keep up with the upstream alpine image!

# Information

- `FROM: alpine:stable`
- Nginx
- PHP7 + FPM

The image uses the `nginx` user with id `555`.

# Example

```sh
docker run -p 8080:8080 \
  -v $(pwd)/bl-plugins:/usr/share/nginx/html/bl-plugins \
  -v $(pwd)/bl-themes:/usr/share/nginx/html/bl-themes \
  -v $(pwd)/bl-content:/usr/share/nginx/html/bl-content \
  -it laugmanuel/bludit:latest

# or to skip theme installation
docker run -p 8080:8080 \
  -v $(pwd)/bl-plugins:/usr/share/nginx/html/bl-plugins \
  -v $(pwd)/bl-themes:/usr/share/nginx/html/bl-themes \
  -v $(pwd)/bl-content:/usr/share/nginx/html/bl-content \
  -e SKIP_THEMES_INSTALL=true \
  -it laugmanuel/bludit:latest
```

# Environment variables

### `SKIP_THEMES_INSTALL` (default: `false`)
Skips the installation of build-in **bludit themes** if set to `true`.  
**<ins>Note:</ins>** You need to keep the themes up-to-date yourself! Furture bludit releases might not work with old themes!  

### `SKIP_PLUGINS_INSTALL` (default: `false`)
Skips the installation of build-in **bludit plugins** if set to `true`.  
**<ins>Note:</ins>** You need to keep the plugins up-to-date yourself! Furture bludit releases might break with old plugins!  
