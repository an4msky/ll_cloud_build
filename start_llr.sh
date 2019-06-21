#!/bin/sh

cd /opt/learninglocker/
sudo -u docker pm2 start pm2/all.json --hp /home/docker
cd /opt/xapi-service/
sudo -u docker pm2 start pm2/xapi.json --hp /home/docker
pm2 logs
