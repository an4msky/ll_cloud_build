FROM docker-registry.default.svc:5000/products/lrs-stage2:latest

RUN yum -y install sudo

RUN adduser docker
RUN passwd -d docker
RUN usermod -aG wheel docker
RUN usermod -d /opt/home/docker docker

ENV HOME=/opt/home/docker
ENV EXPORT PM2_HOME=/home/docker

RUN mkdir /.pm2
RUN chown -R docker:wheel /.pm2

#CMD ["/usr/sbin/init"]

COPY start_llr.sh /opt/learninglocker/start_llr.sh
RUN chmod +x /opt/learninglocker/start_llr.sh

USER docker

ENTRYPOINT /opt/learninglocker/start_llr_v2.sh

