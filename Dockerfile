FROM node:argon

ENV NODE_PORT=7000
RUN mkdir -p /opt/app
WORKDIR /opt/app
COPY ./package.json /opt/app

RUN npm install 

COPY ./public /opt/app/public
COPY ./index.js /opt/app/index.js

EXPOSE 7000