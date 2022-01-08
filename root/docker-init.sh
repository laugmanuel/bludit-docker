#!/bin/sh

export SOURCE_PATH="/bludit/"
export TARGET_PATH="/usr/share/nginx/html/"
export SKIP_THEMES_INSTALL="${SKIP_THEMES_INSTALL:='false'}"
export SKIP_PLUGINS_INSTALL="${SKIP_PLUGINS_INSTALL:='false'}"

echo "[+] docker-init.sh for bludit"
echo "  - Webroot: ${TARGET_PATH}"
echo "  - Package source: ${SOURCE_PATH}"
echo "  - Skip theme install: ${SKIP_THEMES_INSTALL}"
echo "  - Skip plugins install: ${SKIP_PLUGINS_INSTALL}"

# Execute all scripts in /docker-init.d/
for file in /docker-init.d/*; do
  [ -f "${file}" ] && source "${file}"
done
