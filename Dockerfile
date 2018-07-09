FROM ubuntu:xenial
LABEL maintainer="quektyson@gmail.com"
RUN apt-get update
RUN apt-get install -y openssl libssl-dev libgssapi-krb5-2:amd64
COPY bin /usr/local/bin
RUN chmod -R 755 /usr/local/bin
WORKDIR /home/mongo-bi-connector
EXPOSE 3307