FROM ubuntu
MAINTAINER IS

WORKDIR /app
RUN apt-get update && apt-get -y install ruby
COPY gemrc /etc/gemrc
RUN gem install bundler
COPY GEMfile /app/Gemfile
RUN bundle install
COPY . /app
EXPOSE 9292
CMD ["bundle","exec","rackup", "--host", "0.0.0.0"]
