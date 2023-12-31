FROM centos:latest
MAINTAINER harshsingh8818$@gmail.com
RUN apt install -y httpd \
  zip \
  unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page293/fitapp.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip fitapp.zip \
 && cp -rvf fitapp/* . \
 && rm -rf fitapp fitapp.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
