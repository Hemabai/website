FROM hshar/webapp
ADD ./index.html /var/www/html
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y apache2
CMD apachectl -D FOREGROUND
