#---------------------------------------------------------------------------
# Dockefile to build Docker Image of Apache WebServer running on Ubuntu

FROM ubuntu:16.04

RUN apt-get -y update
RUN apt-get -y install apache2

RUN echo '<h1>Hello World from ECS</h1><br>This was built and deployed by Jenkins!<br>' > /var/www/html/index.html
RUN echo 'Fully Automated CI/CD<br>' >> /var/www/html/index.html
RUN echo 'This will be one day <font color="blue">Translate Service' >> /var/www/html/index.html

CMD ["/usr/sbin/apache2ctl", "-D","FOREGROUND"]
EXPOSE 80
