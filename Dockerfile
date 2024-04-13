FROM node:18 AS build-env
RUN npm install -g http-server
COPY . /app
WORKDIR /app

COPY package*.json ./
# install dependencies
RUN npm install

COPY . .
# build app for production with minification
RUN npm run build
EXPOSE 3000 
CMD [ "http-server", "dist", "-p", "3000" ]
