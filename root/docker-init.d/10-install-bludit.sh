#!/bin/sh

# Check for existance of SOURCE_PATH and TARGET_PATH
for p in ${SOURCE_PATH} ${TARGET_PATH}; do
  if [ ! -d "${p}" ]; then
    echo "${p} -- directory not found!"
    exit 1
  fi
done

echo "[+] Installing grav ..."

for f in $(ls -A ${SOURCE_PATH}); do
  if [ "${f}" == "bl-content" ] || [ "${f}" == "bl-themes" ] || [ "${f}" == "bl-plugins" ]; then
    if [ -d ${TARGET_PATH}/${f} ] && [ $(ls -AR ${TARGET_PATH}/${f} | wc -l ) -gt 0 ]; then
      echo "  - ${TARGET_PATH}${f} contains data (probably from a prior install). Skipping..."
      continue
    fi
  fi
  
  echo "  - Copying ${SOURCE_PATH}${f} to ${TARGET_PATH} ..."
  cp -a ${SOURCE_PATH}/${f} ${TARGET_PATH}/
done
