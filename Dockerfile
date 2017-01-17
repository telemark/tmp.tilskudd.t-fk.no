###########################################################
#
# Dockerfile for tmp.tilskudd.t-fk.no
#
###########################################################

# Setting the base to nodejs 7.4.0
FROM node:7.4.0-alpine

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