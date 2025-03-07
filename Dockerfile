# Dockerfile for backend
FROM node:18.19.0

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm ci

# Copy the rest of the app's code
COPY . .

# Expose port 8888 for the backend
EXPOSE 8888

# Command to start the server (no build needed)
CMD ["npm", "run", "start-server"]

