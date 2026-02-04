FROM centos:7
MAINTAINER ngobinath@hotmail.com
RUN yum install -y httpd \
 zip\
 unzip
ADD /home/ubuntu/WeddingPhoto.jpeg /var/www/html
WORKDIR /var/www/html/
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80 443