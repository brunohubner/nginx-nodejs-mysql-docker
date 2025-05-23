FROM node:18-alpine3.16

ENV PORT ${PORT}
ENV DOCKERIZE_VERSION v0.6.1

WORKDIR /app

RUN apk update && \
  apk upgrade && \
  apk add wget

RUN wget https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && tar -C /usr/local/bin -xzvf dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && rm dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz

COPY ../package*.json .

RUN npm i --silent

COPY ../ .

EXPOSE ${PORT}

CMD [ "npm", "start" ]