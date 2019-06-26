FROM docker-registry.default.svc:5000/products/lrs-stage2:latest

RUN yum -y install sudo bash

ENV LL_TAG=v2.8.2
RUN git clone https://github.com/LearningLocker/learninglocker.git /opt/learninglocker \
    && cd /opt/learninglocker \
    && git checkout $LL_TAG

WORKDIR /opt/learninglocker

COPY .env .env

RUN yarn install \
    && yarn build-all

RUN cp -r storage storage.template

RUN yarn migrate

RUN node cli/dist/server createSiteAdmin "example@example.ru" "Example" "Qwerty123"

#ENV XAPI_SVC_TAG=v2.4.0
#RUN git clone https://github.com/LearningLocker/xapi-service.git /opt/xapi-service \
#    && cd /opt/xapi-service #\
#    && git checkout $XAPI_SVC_TAG
#COPY .env_xapi /opt/xapi-service/.env
#WORKDIR /opt/xapi-service
#RUN npm install
#RUN npm run build

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
#ENV EXPORT PM2_HOME=/tmp

#RUN mkdir /.pm2
#RUN chown -R docker:wheel /.pm2

COPY start_llr.sh /opt/learninglocker/start_llr.sh
RUN chmod +x /opt/learninglocker/start_llr.sh

#USER docker

WORKDIR /opt/learninglocker

#CMD ["/usr/sbin/init"]
#CMD ["/opt/learninglocker/start_llr.sh"]
#ENTRYPOINT ["/opt/learninglocker/start_llr.sh"]

RUN ls -la /usr/bin/pm2-docker
RUN chmod -R 777 logs/

#CMD ['/usr/bin/pm2-docker', 'pm2/all.json']
CMD ['/usr/lib/node_modules/pm2/bin/pm2-docker', 'pm2/all.json']


