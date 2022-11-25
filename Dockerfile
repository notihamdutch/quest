FROM node:latest

WORKDIR /app

COPY package.json /app

RUN npm install

COPY . /app

ENV SECRET_WORD=TwelveFacto

EXPOSE 3000

CMD [ "npm", "start" ]

