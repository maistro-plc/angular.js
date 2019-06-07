FROM ubuntu:18.04

RUN apt-get update && apt-get install -y software-properties-common
RUN DEBIAN_FRONTEND='noninteractive'
RUN apt-get install -y libcurl4 curl apt-transport-https
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update
RUN apt-get -y install git libuv1 yarn nodejs openjdk-8-jdk
RUN yarn global add grunt-cli
WORKDIR /opt/angular
