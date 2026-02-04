FROM centos:latest
MAINTAINER ngobinath@hotmail.com
RUN yum update -y && \
    yum install -y curl --setopt=tsflags=nodocs && \
    yum clean all
RUN yum install -y httpd
WORKDIR /var/www/html/
RUN cp -rvf /home/ubuntu/WeddingPhoto.jpeg .
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80 443