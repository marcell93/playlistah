FROM node:10-alpine
RUN mkdir -p /home/dave/playlistah/node_modules && chown -R node:node /home/dave/playlistah
WORKDIR /home/dave/playlistah
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3000
CMD [ "npm", "start" ]