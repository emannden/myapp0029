FROM alpine:latest

ADD web.sh /opt/web.sh

RUN apk add --no-cache --virtual .build-deps ca-certificates curl \
 && chmod +x /opt/web.sh

ENTRYPOINT ["sh", "-c", "/opt/web.sh"]
