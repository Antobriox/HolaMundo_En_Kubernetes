# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install the application dependencies
RUN npm install

# Copy the rest of the application files to the container
COPY . .

# Expose the port on which your application will run
EXPOSE 3000

# Define the command to start your application
CMD ["node", "app.js"]
