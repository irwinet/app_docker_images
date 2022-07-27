FROM centos:7

RUN yum install httpd -y

#FORMA 1
WORKDIR /var/www/html
COPY apiettravel .

#FORMA 2
#COPY apiettravel /var/www/html
#ADD apiettravel /var/www/html

ENV contenido prueba

RUN echo "$contenido" > /var/www/html/prueba.html

#EXPOSE 8080

CMD apachectl -DFOREGROUND