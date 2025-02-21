# Use official Node.js slim image for building the project
FROM node:18-slim

#Set working directory in container
WORKDIR /shop

# Copy package.json and package-lock.json
COPY package.json package-lock.json ./

#Copy the rest of the files
COPY . .

# Install dependencies
RUN npm install && npm run build .

# Expose Port
EXPOSE 3002

#Start
CMD ["npm","run","dev"]