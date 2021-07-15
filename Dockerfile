FROM node:lts-alpine
WORKDIR /app/root
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 4444
CMD [ "npm", "run", "serve" ]