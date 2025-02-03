# version of node used locally
FROM node:23

# sets working directory on the image filesystem
WORKDIR /app

# add `/app/node_modules/.bin` to $PATH
ENV PATH /app/node_modules/.bin:$PATH

# sets port to 7775
ENV PORT 7775

# copy app files to container
COPY . ./

# install app dependencies
# react-scripts version found in package.json
COPY package.json ./
COPY package-lock.json ./
RUN npm install
RUN npm install react-scripts@5.0.1 -g

# add app
COPY . ./

CMD ["npm", "start"]