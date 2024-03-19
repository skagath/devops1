FROM node:8.6.0-alpine
WORKDIR /usr/src/app
COPY package.json .
COPY package-lock.json .
RUN npm install -f
COPY . .
EXPOSE 3000
CMD [ "npm", "start" ]
