FROM node:20-alpine

# Set working directory for container
WORKDIR /app

# Copy package files to working directory
COPY package*.json ./

# Install production dependencies
RUN npm install

# Copy rest of application over
COPY . .

# Build application
RUN npm run build

# Change ownership of files and switch to node user
RUN chown -R node:node /app
USER node

# Expose application port
EXPOSE 6464

# Preview application
CMD ["npm", "run", "preview"]
