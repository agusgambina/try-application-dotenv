FROM node:12.10.0-alpine

WORKDIR /usr/src/app
RUN echo "fs.inotify.max_user_watches=524288" >> /etc/sysctl.conf
RUN apk add --update \
    python \
    python-dev \
    py-pip \
    build-base \
    git \
    openssh-client \
  && pip install virtualenv \
  && rm -rf /var/cache/apk/*

COPY package*.json ./
RUN npm install
COPY . .
CMD [ "node", "index.js" ]