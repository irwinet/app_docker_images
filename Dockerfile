FROM centos:7

RUN yum install httpd -y

#COPY apiettravel /var/www/html
ADD apiettravel /var/www/html

CMD apachectl -DFOREGROUND