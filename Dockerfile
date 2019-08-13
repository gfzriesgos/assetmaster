FROM ubuntu:18.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install python3 git python3-pip libspatialindex-dev -y

RUN mkdir /usr/share/git && \
    cd /usr/share/git && \
    git clone https://github.com/gfzriesgos/assetmaster.git && \
    cd assetmaster && \
    pip3 install -r requirements.txt
