FROM ruby:2.2.0-onbuild
MAINTAINER Steven Jack <stevenmajack@gmail.com>

RUN mkdir -p /app
ADD .rubocop.yml /.rubocop.yml
WORKDIR /app

CMD ["rubocop", "-c", "/.rubocop.yml"]

