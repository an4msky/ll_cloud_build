FROM docker-registry.default.svc:5000/products/lrs-stage2:latest

#ENV HOME=/home/docker
#ENV PM2_HOME=/tmp

##RUN useradd -ms /bin/bash docker
##RUN mkdir /.pm2
##RUN chown -R docker:docker /.pm2

COPY start_llr.sh /opt/learninglocker/start_llr.sh
RUN chmod +x /opt/learninglocker/start_llr.sh

##RUN chown -R docker:docker /opt/
##USER docker

WORKDIR /opt/learninglocker

#CMD ["/usr/sbin/init"]
#CMD ["/opt/learninglocker/start_llr.sh"]
#ENTRYPOINT ["/opt/learninglocker/start_llr.sh"]

#RUN ls -la /usr/bin/pm2-docker
#CMD ['/usr/bin/pm2-docker', 'pm2/all.json']

##ENV PM2_HOME=/home/docker
COPY .env_xapi /src/xapi-service/.env
ENTRYPOINT ["/bin/bash", "/opt/learninglocker/start_llr.sh"]



