FROM alpine
MAINTAINER IS

WORKDIR /src
RUN apk update && apk add ruby ruby-io-console ruby-json yaml build-base
COPY gemrc /etc/gemrc
RUN gem install bundler
RUN apk add ruby-dev make gcc
COPY Gemfile /src/Gemfile
#COPY Gemfile.lock /src/Gemfile
RUN bundle install
ENTRYPOINT ["/usr/bin/rspec"]
