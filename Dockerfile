# Use a lightweight Node.js base image
FROM node:14-alpine

# Set the working directory
WORKDIR /app

# Copy the package.json and package-lock.json files
COPY package*.json ./

# Install the application dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Build the application
RUN npm run copy-libs

# Expose the port the app will run on
EXPOSE 8000

# Start the application
CMD ["npm", "start"]