# Base Image - Node Platform
FROM node:alpine
LABEL maintainer="rambabusaravanan@gmail.com" version="2.0.1"

# Install Firebase CLI
RUN yarn global add firebase-tools


# Python for sass
RUN apk add --no-cache --virtual .build-deps alpine-sdk python \
 && npm install --production --silent \
 && apk del .build-deps
