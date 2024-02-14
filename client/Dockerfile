# Dockerfile
# Start from the official Node image
FROM node:18.19.0

RUN mkdir -p /client/node_modules 


# Set working directory
WORKDIR /client

# Copy package.json and package-lock.json
COPY package*.json ./



# Install dependencies
RUN npm install

# Copy the rest of your frontend application
COPY . .

# # Build your app
# RUN npm run build

EXPOSE 3000

CMD ["npm", "start"]


