FROM node:20

WORKDIR /app

COPY package.json package-lock.json ./

RUN npm install

COPY . .

# Expose port for clarity
EXPOSE 8004

CMD ["node", "src/publisher.js"]