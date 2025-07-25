FROM debian:bookworm-slim

RUN apt-get update && apt-get install -y \
    shadowsocks-libev \
    v2ray-plugin \
    curl \
    && rm -rf /var/lib/apt/lists/*

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 10000

CMD ["/entrypoint.sh"]
