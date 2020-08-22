#!/bin/sh

export SOURCE_PATH="/bludit/"
export TARGET_PATH="/usr/share/nginx/html/"

echo "[+] docker-init.sh for bludit"
echo "  - Webroot: ${TARGET_PATH}"
echo "  - Package source: ${SOURCE_PATH}"

# Execute all scripts in /docker-init.d/
for file in /docker-init.d/*; do
  [ -f "${file}" ] && source "${file}"
done
