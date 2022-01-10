FROM alpine:latest AS base
RUN apk update \
  && apk add --update 'nodejs<17' \
  && apk add --update npm

FROM base AS build
WORKDIR /pre
COPY . /pre
RUN npm install && npm run build

FROM base AS run
WORKDIR /site
COPY --from=build /pre/build /site/build
COPY --from=build /pre/package.json /site/package.json

ENV PORT="5556"
ENTRYPOINT [ "node", "./build/index.js" ]