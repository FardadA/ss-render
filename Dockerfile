FROM alpine:3.18

RUN apk add --no-cache shadowsocks-libev v2ray-plugin curl
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 10000
CMD ["/entrypoint.sh"]
