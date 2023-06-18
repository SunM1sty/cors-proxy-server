FROM node:latest as builder

WORKDIR /

COPY package*.json ./

COPY index.js ./
COPY .env ./


RUN npm install

EXPOSE 8080/tcp
