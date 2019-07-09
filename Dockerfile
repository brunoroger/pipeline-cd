FROM node:alpine

RUN npm install -g serve

COPY package*.json ./
RUN npm ci

COPY . .
RUN npm run build

EXPOSE 80

CMD serve -p 80 -s build