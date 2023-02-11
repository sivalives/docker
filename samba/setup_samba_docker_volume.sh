#!/bin/bash
sudo docker volume create iptv-volume
sudo docker pull trnape/rpi-samba
sudo docker run -d -p localhost:445:445 -v /var/lib/docker/volumes/iptv-volume/_data:/share/data --name docker-samba trnape/rpi-samba -u "pi:dont4get" -s "pi-files:/share/data/:rw:pi"
sudo docker update --restart unless-stopped $(docker ps -q)
