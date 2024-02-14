# Dockerfile
# Use the official Node.js 18 as a parent image
FROM node:18.19.0

RUN mkdir -p /server/node_modules && chown -R node:node /server


# Set the working directory in the container
WORKDIR /server

# Copy package.json and package-lock.json
COPY package*.json ./

USER node

RUN npm ci

COPY --chown=node:node . .

EXPOSE 8888

# Command to run the app
CMD ["npm", "run", "start-server"]