#/bin/bash
sudo docker-compose stop
sudo docker-compose up -d

#need to sleep in case result is not here yet
sleep 2s

#Get exit code from rspec container
exit_code=`sudo docker-compose ps -q spec | xargs sudo docker inspect -f '{{ .State.ExitCode }}'`

#cleanup
sudo docker-compose stop
yes | sudo docker-compose rm
exit $exit_code

