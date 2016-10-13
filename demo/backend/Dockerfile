FROM alpine
MAINTAINER IS

WORKDIR /app
RUN apk update && apk add ruby ruby-io-console ruby-json yaml build-base openssl
COPY gemrc /etc/gemrc
RUN gem update --system
RUN gem install bundler
COPY GEMfile /app/Gemfile
RUN bundle install
COPY . /app
EXPOSE 9292
CMD ["bundle","exec","rackup", "--host", "0.0.0.0"]
