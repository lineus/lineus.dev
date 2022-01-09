FROM alpine:latest AS Base
WORKDIR /site
COPY ./package.json /site
COPY ./build/ /site/build
RUN apk update \
  && apk add --update 'nodejs<17' \
  && apk add --update npm \
  && npm install
ENV PORT="5556"
ENTRYPOINT [ "node", "./build/index.js" ]