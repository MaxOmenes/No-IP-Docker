FROM ubuntu

WORKDIR /app

ENV NOIP_USERNAME="default"
ENV NOIP_PASSWORD="password"
ENV NOIP_HOSTNAMES="default.ddns.net"

COPY ./noip-duc_3.0.0-beta.7_amd64.deb /app

RUN apt update 
RUN apt-get install ./noip-duc_3.0.0-beta.7_amd64.deb

CMD noip-duc



