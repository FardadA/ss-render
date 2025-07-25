#!/bin/sh

PORT=${PORT:-10000}
PASSWORD=${PASSWORD:-fardad1386}
METHOD=${METHOD:-aes-256-gcm}
PATH_WS=${WS_PATH:-/ss}
HOST=${RENDER_EXTERNAL_HOST:-localhost}

ss-server \
  -s 0.0.0.0 -p "$PORT" \
  -k "$PASSWORD" -m "$METHOD" \
  --plugin v2ray-plugin \
  --plugin-opts "server;path=$PATH_WS;host=$HOST;loglevel=none"
