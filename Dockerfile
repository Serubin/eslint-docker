FROM alpine:3.10
MAINTAINER Serubin <admin@serubin.net>

ENV ESLINT_VERSION="5.12.1"

RUN apk add --no-cache --virtual .run-deps nodejs nodejs-npm \
 && npm install -g eslint@$ESLINT_VERSION eslint-loader typescript-eslint-parser eslint-plugin-angular typescript \
 && mkdir -p /opt/src

COPY docker-entrypoint.sh /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["eslint"]
