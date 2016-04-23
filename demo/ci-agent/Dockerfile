FROM gocd/gocd-agent
MAINTAINER IS

RUN curl -fsSL https://get.docker.com/ | sh
RUN apt-get -y install python-pip 
RUN pip install docker-compose

VOLUME "/var/run/docker.sock"
