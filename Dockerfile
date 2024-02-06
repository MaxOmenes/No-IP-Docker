FROM ubuntu

WORKDIR /app

ENV NOIP_USERNAME="default"
ENV NOIP_PASSWORD="password"
ENV NOIP_HOSTNAMES="default.ddns.net"

RUN apt update && apt install wget -y
RUN wget https://dmej8g5cpdyqd.cloudfront.net/downloads/noip-duc_3.0.0-beta.7.tar.gz
RUN tar xf noip-duc_3.0.0-beta.7.tar.gz
RUN cp noip-duc_3.0.0-beta.7/binaries/noip-duc_3.0.0-beta.7_amd64.deb /app
RUN apt-get install ./noip-duc_3.0.0-beta.7_amd64.deb

CMD noip-duc



