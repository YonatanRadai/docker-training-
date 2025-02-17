FROM node as build
WORKDIR /server
COPY . . 
RUN npm install
RUN echo "✅ builder"

FROM build as test
RUN npm test
RUN echo "✅ test"

FROM node:alpine as service
WORKDIR /server
COPY --from=test /server/server.js server.js
COPY --from=test /server/node_modules node_modules
CMD [ "node", "server.js" ]
RUN echo "✅ service"