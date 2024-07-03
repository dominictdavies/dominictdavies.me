FROM node:20-alpine

# Set working directory for container
WORKDIR /app

# Copy package files to working directory
COPY package*.json ./

# Install production dependencies
RUN npm install --production

# Copy rest of application over
COPY . .

# Change ownership of files and switch to node user
RUN chown -R node:node /app
USER node

# Expose application port
EXPOSE 6464

# Run application
CMD ["node", "app.js"]
