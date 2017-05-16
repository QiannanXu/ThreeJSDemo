FROM node:7.8.0

LABEL maintainer "qiannan.xu@gmail.com"

RUN ln -s /usr/bin/nodejs /usr/bin/node

WORKDIR /app
ADD package.json /app/package.json
RUN npm install
ADD . /app

CMD npm run build
