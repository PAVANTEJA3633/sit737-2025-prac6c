# Use Google-hosted Node.js base image (avoids Docker Hub issues)
FROM gcr.io/google-appengine/nodejs

# Set working directory
WORKDIR /usr/src/app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy application source files
COPY . .

# Expose port 8080 (adjust as needed)
EXPOSE 8080

# Start the application
CMD ["node", "app.js"]
