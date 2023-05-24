FROM node:10

EXPOSE 6060

# set working directory
RUN mkdir /usr/src/app
WORKDIR /usr/src/app

# add `/usr/src/app/node_modules/.bin` to $PATH
ENV PATH /usr/src/app/node_modules/.bin:$PATH


# install and cache app dependencies
# RUN npm install react-scripts@1.1.1 -g
RUN yarn add react-scripts@1.1.1 -g

COPY . .
COPY package.json /usr/src/app/package.json
#RUN npm install --legacy-peer-deps
#RUN npm cache clean --force

# start app
CMD bash start-container.sh
