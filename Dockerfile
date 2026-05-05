FROM node:18

WORKDIR /app

# Copy package files first
COPY package.json package-lock.json* ./

RUN npm install

# Copy rest of code
COPY . .

EXPOSE 3000

CMD ["npm", "start"]