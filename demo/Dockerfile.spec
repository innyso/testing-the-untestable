FROM alpine
MAINTAINER IS

WORKDIR /src
RUN apk update && apk add ruby ruby-io-console ruby-json yaml build-base ca-certificates ruby-dev make gcc
COPY gemrc /etc/gemrc
RUN gem install bundler
COPY Gemfile /src/Gemfile
COPY .rspec /src/.rspec
RUN bundle install
ENTRYPOINT ["/usr/bin/rspec"]
