FROM node:boron-alpine
MAINTAINER easter1021<mufasa.hsu@gmail.com>

# Create app directory
RUN mkdir -p /var/www/html
WORKDIR /var/www/html

# Install app dependencies
COPY app/package.json /var/www/html
RUN npm install

# Bundle app source
COPY app /var/www/html

EXPOSE 8080
CMD [ "npm", "start" ]