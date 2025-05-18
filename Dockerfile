FROM node:18-alpine

WORKDIR /app

# Copy frontend source files
COPY ./src/frontend ./src/frontend

WORKDIR /app/src/frontend

# Install dependencies
RUN npm install

# Build frontend assets
RUN npm run build

# Expose port and start the app
EXPOSE 8080
CMD ["npm", "start"]
