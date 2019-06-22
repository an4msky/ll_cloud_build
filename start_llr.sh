#!/bin/sh

#cd /opt/learninglocker/
#pm2 start pm2/all.json
#cd /opt/xapi-service/
#pm2 start pm2/xapi.json 
#pm2 logs

cd /opt/learninglocker

node worker/dist/server/ &
node ui/dist/server/ &
node api/dist/server/ &
