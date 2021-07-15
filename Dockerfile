FROM node:lts-alpine
WORKDIR /app/root
COPY package*.json ./
RUN npm install
COPY . .
CMD [ "npm","start","-p 4444"]
