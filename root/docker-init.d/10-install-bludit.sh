#!/bin/sh

# Check for existance of SOURCE_PATH and TARGET_PATH
for p in ${SOURCE_PATH} ${TARGET_PATH}; do
  if [ ! -d "${p}" ]; then
    echo "${p} -- directory not found!"
    exit 1
  fi
done

echo "[+] Installing bludit ..."

for f in $(ls -A ${SOURCE_PATH}); do
  echo "  - Copying ${SOURCE_PATH}${f} to ${TARGET_PATH} ..."
  cp -a ${SOURCE_PATH}/${f} ${TARGET_PATH}/
done
