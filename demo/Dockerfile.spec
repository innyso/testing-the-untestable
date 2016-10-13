FROM ubuntu
MAINTAINER IS

WORKDIR /src
RUN apt-get update && apt-get -y install ruby ruby-dev build-essential g++
COPY gemrc /etc/gemrc
RUN gem install bundler
COPY Gemfile /src/Gemfile
COPY .rspec /src/.rspec
RUN bundle install
ENTRYPOINT ["/usr/bin/rspec"]
