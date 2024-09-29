# Use an official Node.js runtime as the base image
FROM node:current-alpine

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and install dependencies
COPY package*.json ./

RUN npm install --production

# Copy the rest of the app code
COPY . .

# Expose port 3000
EXPOSE 3000

# Command to run the app
CMD ["npm", "start"]
