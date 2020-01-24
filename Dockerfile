FROM node:12.14.0-alpine3.11

WORKDIR /usr/src/lhci
COPY package.json .
COPY server.js .
RUN npm install

EXPOSE 9001
CMD [ "npm", "start" ]