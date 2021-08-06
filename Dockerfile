FROM alpine:3.5

ADD runmyapp.sh /opt/runmyapp.sh

RUN apk add --no-cache --virtual .build-deps ca-certificates curl \
 && chmod +x /opt/runmyapp.sh

ENTRYPOINT ["sh", "-c", "/opt/runmyapp.sh"]
