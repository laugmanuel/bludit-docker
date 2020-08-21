#!/bin/sh

echo "[+] docker-init.sh for bludit"

# Execute all scripts in /docker-init.d/
for file in /docker-init.d/*; do
  [ -f "${file}" ] && source "${file}"
done
