FROM node:12.22.1
RUN apt-get -y update
RUN apt install -y cmake
RUN npm install -g npm@7.24.1
RUN npm install -g pm2
RUN npm install -g env-cmd 
RUN npm install -g node-gyp@v8.1.0 
RUN npm install -g @nestjs/cli@8.1.1
RUN npm install -g typescript@4.4.3 

ENV TZ=Asia/Seoul
RUN apt-get install -y tzdata

RUN pm2 install pm2-logrotate
RUN pm2 set pm2-logrotate:max_size 101M
RUN npm install -g ts-node
RUN pm2 -v
WORKDIR /home


