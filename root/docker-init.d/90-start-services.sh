#!/bin/sh

echo "[+] Starting services ..."

echo "  - php-fpm ..."
php-fpm7 --daemonize

echo "  - nginx ..."
nginx -g "daemon off;"
