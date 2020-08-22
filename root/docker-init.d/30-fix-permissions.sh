#!/bin/sh

echo "[+] Fixing permissions ..."

echo "  - Fixing owner ..."
chown -R nginx:nginx ${TARGET_PATH}/* ${TARGET_PATH}/.*

echo "  - Fixing file mode ..."
find ${TARGET_PATH}/ -type f | xargs chmod 664
find ${TARGET_PATH}/bin -type f | xargs chmod 775

echo "  - Fixing directory mode ..."
find ${TARGET_PATH}/ -type d | xargs chmod 775
find ${TARGET_PATH}/ -type d | xargs chmod +s

echo "  - Setting umask ..."
(
  cd ${TARGET_PATH}
  umask 0002
)

