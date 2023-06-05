# Base image
FROM 073449301057.dkr.ecr.us-east-2.amazonaws.com/testecr

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the entire project to the container
COPY . .

# Build the React app
RUN npm run build

# Expose a port if your application listens on one
EXPOSE 3000

# Define the command to run your application
CMD ["npm", "start"]
