# Use the official Node.js image from Docker Hub
FROM node:16

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and app.js into the container
COPY package*.json ./
COPY app.js ./

# Expose the port the app will run on
EXPOSE 8080

# Install dependencies (if any)
RUN npm install

# Start the application
CMD ["node", "app.js"]
