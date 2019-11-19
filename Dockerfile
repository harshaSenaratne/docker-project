#Define the base image you are going to use
FROM node:alpine

#This where the copied projects files will be saved.
WORKDIR /usr/app

#Copy only the package.json file to container directory.
COPY ./package.json ./


#Install the dependecies required for the project
RUN npm install

#Copy the files from current working directory of the project to current working directory of the image
COPY ./ ./


#Define the default command
CMD [ "npm","start" ]