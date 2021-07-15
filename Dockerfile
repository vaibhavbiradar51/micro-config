FROM node:lts-alpine
RUN npm install -g http-server
WORKDIR /app/root
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run serve
EXPOSE 9000
CMD [ "http-server", "-p 9000", "dist" ]