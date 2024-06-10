FROM node:16.20.1

WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

EXPOSE 5000

CMD ["npm", "run", "start"]