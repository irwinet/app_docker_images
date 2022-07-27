FROM centos:7

LABEL version="1.0"
LABEL description="This is an apache image"
LABEL vendor="apiettravel"

RUN yum install httpd -y

#FORMA 1
#WORKDIR /var/www/html
#COPY apiettravel .

#FORMA 2
COPY apiettravel /var/www/html
#ADD apiettravel /var/www/html

#ENV contenido prueba
#RUN echo "$contenido" > /var/www/html/prueba.html
#EXPOSE 8080

RUN echo "$(whoami)" > /var/www/html/user1.html
RUN useradd irwin
#RUN chown irwin /var/www/html
USER irwin

#RUN echo "$(whoami)" > /var/www/html/user2.html
RUN echo "$(whoami)" > /tmp/user2.html
#VOLUME /var/www/html
USER root
RUN cp /tmp/user2.html /var/www/html/user2.html

COPY run.sh /run.sh

CMD sh /run.sh
#CMD apachectl -DFOREGROUND