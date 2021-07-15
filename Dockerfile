FROM node:lts-alpine
RUN npm install -g http-server
WORKDIR /app/root
COPY package*.json ./
RUN npm install
COPY . .
CMD [ "npm","start","-p 4444"]