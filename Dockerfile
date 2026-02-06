FROM ubuntu:latest
MAINTAINER ngobinath@hotmail.com
RUN apt-get update && apt-get install -y apache2 && apt-get clean && apt install zip unzip
ADD https://www.tooplate.com/download/2095_level /var/www/html
WORKDIR /var/www/html/
RUN unzip 2095_level.zip 
RUN cp -rvf 2095_level/* .
RUN rm -rf 2095_level 2095_level.zip
CMD ["apache2ctl", "-D", "FOREGROUND"]
EXPOSE 80 443