FROM node:latest

MAINTAINER barrentd

#Angular CLI
RUN npm install -g @angular/cli

#Dependencies
COPY package.json ./
RUN npm install

#CreateProject Directory
RUN mkdir /home/node/app

#Create Angular Project
RUN ng new appAngular --directory=/home/node/app;

#Set the Work Directory
WORKDIR /home/node/app

#Launch Angular Project
ENTRYPOINT ng serve --host=0.0.0.0
