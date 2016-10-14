FROM alpine
MAINTAINER IS

WORKDIR /src
RUN apk update && apk add ruby ruby-io-console ruby-json yaml build-base ca-certificates
COPY gemrc /etc/gemrc
RUN gem install bundler
COPY Gemfile /src/Gemfile
COPY .rspec /src/.rspec
RUN bundle install
ENTRYPOINT ["/usr/local/bin/rspec"]
