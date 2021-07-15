FROM node:lts-alpine
WORKDIR /app/root
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 9000
RUN npm run serve 