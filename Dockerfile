# Use the official Node.js image from the Docker Hub
FROM node:lts-alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json and yarn.lock to the working directory
COPY package.json yarn.lock ./

# Install build tools and Python
RUN apk add --no-cache python3 make g++

# Set Python for node-gyp
ENV PYTHON=/usr/bin/python3

# Install dependencies
RUN yarn install --production

# Copy the rest of the application code to the working directory
COPY . .

# Define the command to run the application
CMD ["node", "src/index.js"]

# Expose the application port
EXPOSE 3000

