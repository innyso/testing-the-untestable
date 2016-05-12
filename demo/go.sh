#/bin/bash

sudo docker-compose up -d

#need to sleep in case result is not here yet
sleep 2s

ret_code=sudo docker-compose ps -q spec | xargs docker inspect -f '{{ .State.ExitCode }}'
echo ret_code
echo "========================="
exit ret_code

