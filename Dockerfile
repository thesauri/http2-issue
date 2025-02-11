
FROM node:latest

RUN apt update
RUN apt install -y iproute2

WORKDIR /app


COPY package*.json ./


RUN npm install


COPY . .


CMD ["node", "client.js"]