# Use a smaller Node base image
FROM node:18 AS build-env

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json separately to leverage Docker layer caching
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Build app for production with minification
RUN npm run build

# Use a lightweight HTTP server to serve the production build
FROM node:18-slim

# Set working directory
WORKDIR /app

# Install http-server globally
RUN npm install -g http-server

# Copy the production build from the previous stage
COPY --from=build-env /app/dist /app/dist

# Expose port 3000
EXPOSE 3000

# Command to start the HTTP server
CMD ["http-server", "dist", "-p", "3000"]
