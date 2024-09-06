# Use the official Node.js image.
# https://hub.docker.com/_/node
FROM node:18

# Set the working directory in the container.
WORKDIR /app

# Copy package.json and package-lock.json.
COPY package*.json ./

# Install the dependencies.
RUN npm install

# Copy the rest of the application code.
COPY . .

# Build the application.
RUN npm run build

# Set the environment variable for the port.
ENV PORT=3000

# Expose the port the app runs on.
EXPOSE 3000

# Start the application.
CMD ["npm", "start"]
