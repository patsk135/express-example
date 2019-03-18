FROM node

# Create app directory
RUN mkdir -p /express-example
WORKDIR /express-example

# Install app dependencies
COPY package.json /express-example
RUN yarn

# Bundle app source
COPY . /express-example
RUN yarn tsc

EXPOSE 80
CMD [ "yarn", "start" ]
