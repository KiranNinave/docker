# specifying base image
FROM node:alpine

# creating and changing working dir
WORKDIR /usr/app

# copying package.json if package.json is modified then only npm install will run otherwise it will take it from cache
COPY ./package.json ./ 

# run startup command
RUN npm install

# copying files
COPY ./ ./

# container startup command
CMD ["npm", "start"]