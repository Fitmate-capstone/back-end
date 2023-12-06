# Use an official Node.js runtime as a parent image
FROM node:14

# Set the working directory to /app
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Bundle your app source
COPY . .

# Expose the port specified by the environment variable PORT or default to 8080
EXPOSE $PORT 8080

# Define the command to run your app
CMD ["npm", "run", "dev"]
