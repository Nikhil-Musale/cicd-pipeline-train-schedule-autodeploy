FROM node:carbon
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
RUN microdnf install findutils
COPY . .
EXPOSE 8080
CMD [ "npm", "start" ]
