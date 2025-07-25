#!/bin/sh
ss-server \
  -s 0.0.0.0 -p 10000 \
  -k fardad1386 -m aes-256-gcm \
  --plugin v2ray-plugin \
  --plugin-opts "server;path=/ss;host=${RENDER_EXTERNAL_HOST};loglevel=none"
