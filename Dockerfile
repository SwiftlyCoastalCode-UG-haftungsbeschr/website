FROM node:18 AS build-env
COPY . /app
WORKDIR /app

RUN npm ci
RUN npm run build

FROM gcr.io/distroless/nodejs18-debian11
COPY --from=build-env /app/dist/ /app/
WORKDIR /app
CMD ["npm", "install", "-g", "serve"]