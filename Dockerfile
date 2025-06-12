FROM jlesage/baseimage-gui:debian-10
MAINTAINER fresta

ENV DEBIAN_FRONTEND noninteractive LANG=en_US.UTF-8

RUN \
    apt-get update --quiet && \
    apt-get install --quiet --yes curl locales simple-scan && \
    apt-get clean
    
ENV APP_NAME="Simple-Scan"
COPY startapp.sh /startapp.sh
