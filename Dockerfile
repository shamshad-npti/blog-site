FROM debian:jessie

RUN apt-get update

RUN apt-get install -y git vim curl

RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -
RUN apt-get install -y nodejs

WORKDIR /app
COPY app /app

RUN npm install

CMD npm start
