FROM node:argon

ENV NODE_PORT=7000
RUN mkdir -p /opt/app
WORKDIR /opt/app
COPY ./package.json /opt/app/package.json

RUN npm install --production

COPY ./public /opt/app/public
COPY ./index.js /opt/app/index.js

EXPOSE 7000