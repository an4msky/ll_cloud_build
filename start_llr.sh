#!/bin/sh

#cd /opt/learninglocker/
#pm2-docker start pm2/all.json
#cd /opt/xapi-service/
#pm2 start pm2/xapi.json 
#pm2-docker logs
export PM2_HOME="/tmp"

cd /opt/learninglocker

#node worker/dist/server/ &
#node ui/dist/server/ &
#node api/dist/server/ &
#node xapi/ &
#wait

/usr/lib/node_modules/pm2/bin/pm2-docker pm2/all.json
