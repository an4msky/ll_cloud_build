FROM docker-registry.default.svc:5000/products/lrs-stage2:latest

#RUN yum -y install nginx

#RUN mkdir /etc/nginx/sites-available
#RUN mkdir /etc/nginx/sites-enabled
#COPY learninglocker.conf /etc/nginx/sites-available/learninglocker.conf
#COPY nginx.conf /etc/nginx/nginx.conf
#RUN ln -s /etc/nginx/sites-available/learninglocker.conf /etc/nginx/sites-enabled/learninglocker.conf

#EXPOSE 80 8333 3000 8080 8081
EXPOSE 3000 8080 8081

#CMD ["env"]

#CMD ['pm2-docker', 'pm2/all.json']

#RUN adduser docker
#RUN passwd -d docker
#RUN usermod -aG wheel docker
#RUN usermod -d /home/docker docker

#ENV HOME=/home/docker
#ENV PM2_HOME=/tmp

RUN mkdir /.pm2
#RUN chown -R docker:wheel /.pm2
#RUN chown -R docker:wheel /opt/learninglocker

COPY start_llr.sh /opt/learninglocker/start_llr.sh
RUN chmod +x /opt/learninglocker/start_llr.sh

#USER docker

WORKDIR /opt/learninglocker

#CMD ["/usr/sbin/init"]
#CMD ["/opt/learninglocker/start_llr.sh"]
#ENTRYPOINT ["/opt/learninglocker/start_llr.sh"]

#RUN ls -la /usr/bin/pm2-docker


#CMD ['/usr/bin/pm2-docker', 'pm2/all.json']
#ENV PM2_HOME=/home/docker
ENTRYPOINT ["/bin/bash", "/opt/learninglocker/start_llr.sh"]



