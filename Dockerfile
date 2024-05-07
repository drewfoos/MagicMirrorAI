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

# Set default value for NODE_ENV
ENV NODE_ENV dev

# Set default value for OPENAI_API_KEY (replace 'your_openai_api_key_here' with a placeholder)
# ENV OPENAI_API_KEY your_openai_api_key_here

# Non-root user for better security
RUN adduser -D appuser
USER appuser

# Expose port 3000 for the application
EXPOSE 3000

# Command to run the application
ENTRYPOINT ["node", "server.js"]
