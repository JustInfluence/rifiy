FROM ruby:2.6-buster

RUN apt-get update && useradd -ms /bin/bash rifiy

RUN gem update --system --no-document \
    && gem install bundler --no-document \
    && gem cleanup all

USER rifiy

WORKDIR /usr/src/app

COPY . .
