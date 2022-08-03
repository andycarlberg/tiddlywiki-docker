FROM node:18-alpine
ARG TIDDLYWIKI_VERSION=latest

COPY . /scripts/

RUN npm install -g tiddlywiki@$TIDDLYWIKI_VERSION

VOLUME [ "/plugins", "/wiki" ]
EXPOSE 8080

ENTRYPOINT ["/scripts/bootstrap"]
