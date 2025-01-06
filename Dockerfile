FROM node:23-alpine

WORKDIR /app

COPY package.json ./

RUN npm install

COPY index.html server.js ./

EXPOSE 3000

ENTRYPOINT ["node", "server.js"]
