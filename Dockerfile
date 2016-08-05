FROM mhart/alpine-node

ADD assets/ /opt/resource/
RUN chmod +x /opt/resource/*

RUN apk update && \
    apk add jq openssh-client bash curl coreutils