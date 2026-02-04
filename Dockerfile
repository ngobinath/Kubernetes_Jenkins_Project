FROM centos:centos7.9.2009
MAINTAINER ngobinath@hotmail.com
RUN yum install -y httpd
WORKDIR /var/www/html/
RUN cp -rvf /home/ubuntu/WeddingPhoto.jpeg .
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80 443