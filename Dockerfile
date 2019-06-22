FROM docker-registry.default.svc:5000/products/lrs-stage2:latest

RUN yum -y install sudo bash

#RUN adduser docker
#RUN passwd -d docker
#RUN usermod -aG wheel docker
#RUN usermod -d /home/docker docker

#ENV HOME=/home/docker
#ENV EXPORT PM2_HOME=/tmp

#RUN mkdir /.pm2
#RUN chown -R docker:wheel /.pm2



#COPY start_llr.sh /opt/learninglocker/start_llr.sh
#RUN chmod +x /opt/learninglocker/start_llr.sh

#USER docker
CMD ["/usr/sbin/init"]

#ENTRYPOINT ["/opt/learninglocker/start_llr.sh"]
#CMD ["/opt/learninglocker/start_llr.sh"]


