FROM node:10.0-alpine

RUN mkdir -p /src/app/proxy

WORKDIR /src/app/proxy

COPY package.json /src/app/proxy

RUN npm install

COPY . /src/app/proxy

EXPOSE 3000

CMD [ "npm", "start" ]
