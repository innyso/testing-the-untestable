#/bin/bash

sudo docker-compose up -d

#need to sleep in case result is not here yet
sleep 2s

exit_code=`sudo docker-compose ps -q spec | xargs sudo docker inspect -f '{{ .State.ExitCode }}'`
echo $exit_code
echo "========================="
exit $exit_code

