#/bin/bash
sudo docker-compose up -d
echo $?
echo "========================="
#need to sleep in case result is not here yet
sleep 2s

sudo docker-compose stop
