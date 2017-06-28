# Setting the base to nodejs 8.1.2
FROM node:8.1.2-alpine

# Maintainer
MAINTAINER Geir Gåsodden

#### Begin setup ####

# Installs git
RUN apk add --update git && rm -rf /var/cache/apk/*

# Bundle app source
COPY . /src

# Change working directory
WORKDIR "/src"

# Install dependencies
RUN npm install --production

EXPOSE 8000

# Startup
ENTRYPOINT npm start