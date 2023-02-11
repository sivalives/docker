#!/bin/bash

#Create volume for storing the output of IPTV to be used with another container for splunk UF
#docker volume create iptv-volume

#Stop container
docker stop docker-telegram

#Delete container if any 
docker rm $(docker ps -a| grep docker-telegram| cut -d " " -f1 )

#Delete image
docker image rm docker-telegram

#Build image : 
docker build -t docker-telegram .

#Run and create container | Pass the APIKEY generated from BOTFATHER ( TELEGRAM)
#docker run -d --restart unless-stopped --name docker-telegram docker-telegram
docker run -d --restart unless-stopped -e APIKEY=<mykey> -v iptv-volume:/iptv-volume --name docker-telegram docker-telegram

#Login to Docker Container : 
#docker exec -it docker-telegram bash

#To keep containers running even after restart/powershutdown of Raspi
#docker update --restart unless-stopped $(docker ps -q)
