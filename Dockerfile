FROM node:18 AS build-env
COPY . /app
WORKDIR /app

RUN npm ci
RUN npm run build

# Install serve globally
RUN npm install -g serve

FROM node:18
COPY --from=build-env /app/dist/ /app/
WORKDIR /app
CMD ["serve", "-s"]