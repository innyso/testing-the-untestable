FROM ubuntu
MAINTAINER IS

WORKDIR /src
RUN apt-get update && apt-get -y install ruby
COPY gemrc /etc/gemrc
RUN gem install bundler
RUN apk add ruby-dev make gcc
COPY Gemfile /src/Gemfile
COPY .rspec /src/.rspec
RUN bundle install
ENTRYPOINT ["/usr/bin/rspec"]
