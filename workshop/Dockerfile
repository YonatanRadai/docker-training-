FROM node as build
WORKDIR /server
COPY . . 
RUN npm install

FROM build as test
RUN npm test

FROM node:alpine as service
WORKDIR /server
COPY --from=test /server/server.js server.js
COPY --from=test /server/node_modules node_modules
CMD [ "node", "server.js" ]