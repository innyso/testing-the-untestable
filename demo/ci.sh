#!/bin/sh
docker-compose stop
docker-compose up -d

#need to sleep in case result is not here yet
sleep 2s

#Get exit code from rspec container
exit_code=`docker-compose ps -q spec | xargs docker inspect -f '{{ .State.ExitCode }}'`

#cleanup
docker-compose stop
yes | docker-compose rm
exit $exit_code
