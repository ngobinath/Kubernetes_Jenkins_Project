FROM ubuntu:latest
MAINTAINER ngobinath@hotmail.com
RUN apt update && sudo apt upgrade -y    
RUN apt install -y apache2
WORKDIR /var/www/html/
RUN cp -rvf /home/ubuntu/WeddingPhoto.jpeg .
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80 443