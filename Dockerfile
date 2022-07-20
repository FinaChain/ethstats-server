FROM node

RUN git clone https://github.com/finachain/ethstats-server /ethstats-server
WORKDIR /ethstats-server
RUN npm install
RUN npm install -g grunt-cli
RUN grunt

EXPOSE  3000
CMD ["npm", "start"]
