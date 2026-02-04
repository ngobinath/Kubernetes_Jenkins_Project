FROM ubuntu:latest
MAINTAINER ngobinath@hotmail.com
RUN apt-get update && apt-get install -y apache2 && apt-get clean
WORKDIR /var/www/html/
RUN cp -rvf /home/ubuntu/WeddingPhoto.jpeg .
CMD ["apache2ctl","-D","FOREGROUND"]
EXPOSE 80