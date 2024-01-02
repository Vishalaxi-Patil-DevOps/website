#FROM ubuntu
#RUN apt update
$RUN apt install apache2 -y
#ADD . /var/www/html
#ENTRYPOINT apachectl -D FOREGROUND
FROM ubuntu
RUN apt update
RUN apt install apache2 -y
ADD . /var/www/html
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf
ENTRYPOINT apachectl -D FOREGROUND

