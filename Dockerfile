FROM node:12.22.1
RUN apt-get -y update
RUN apt install -y cmake
RUN npm install -g npm
RUN npm install -g pm2
RUN npm install -g env-cmd
RUN npm install -g node-gyp typescript @nestjs/cli
RUN pm2 install pm2-logrotate
RUN pm2 set pm2-logrotate:max_size 101M
RUN npm install -g ts-node
RUN pm2 -v
WORKDIR /home


