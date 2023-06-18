FROM node:latest as builder

WORKDIR /

COPY package*.json ./

COPY index.js ./
COPY .env ./


RUN npm install

RUN node index.js

EXPOSE 8080/tcp
