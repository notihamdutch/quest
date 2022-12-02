FROM node:10

WORKDIR /app

COPY package.json /app

RUN npm install

COPY . /app

ENV SECRET_WORD=TwelveFactor

EXPOSE 3000

CMD [ "npm", "start" ]

