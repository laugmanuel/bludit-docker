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
  if [ "${f}" == "bl-themes" ] && [ "${SKIP_THEMES_INSTALL}" == "true" ]; then
    echo "  - Skipping themes install ..."
  elif [ "${f}" == "bl-plugins" ] && [ "${SKIP_PLUGINS_INSTALL}" == "true" ]; then
    echo "  - Skipping plugins install ..."
  else
    echo "  - Copying ${SOURCE_PATH}${f} to ${TARGET_PATH} ..."
    cp -a ${SOURCE_PATH}/${f} ${TARGET_PATH}/
  fi
done
