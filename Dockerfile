FROM node:18 AS build-env
RUN npm install -g http-server
COPY . /app
WORKDIR /app

RUN npm ci
RUN npm run build

FROM gcr.io/distroless/nodejs18-debian11
COPY --from=build-env /app/.output/ /app/
WORKDIR /app
CMD [ "http-server", "dist" ]