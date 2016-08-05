FROM mhart/alpine-node

ADD assets/ /opt/resource/
RUN chmod +x /opt/resource/*

RUN apk update && \
    apk add git jq openssh-client bash curl coreutils && \
    npm install -y -g json2yaml