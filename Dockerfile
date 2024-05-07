# Use the official Node.js 22.1.0 LTS image based on Alpine 3.18
FROM node:22.1.0-alpine3.18

# Set the working directory
WORKDIR /opt/app

# Copy package.json and package-lock.json for better caching
COPY package.json package-lock.json ./

# Install dependencies
RUN npm ci --production

COPY server.js ./
COPY public ./public

# Set environment variables (if required)
ENV NODE_ENV=production

# Non-root user for better security
RUN adduser -D appuser
USER appuser

# Expose port 3000 for the application
EXPOSE 3000

# Command to run the application
ENTRYPOINT ["node", "server.js"]