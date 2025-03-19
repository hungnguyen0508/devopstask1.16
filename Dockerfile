FROM ubuntu:latest 

WORKDIR /usr/src/app

COPY . ./

RUN apt-get update -y && apt-get install -y curl

RUN curl -sL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs

RUN npm install 

ENV REACT_APP_BACKEND_URL=http://localhost:8080
ENV PORT=5000

RUN npm run build 

RUN npm install -g serve 

EXPOSE 5000 

ENTRYPOINT  ["serve","-s", "-l" ,"5000", "build"]


