FROM ubuntu

LABEL MAINTAINER  yaduka.shivam@gmail.com

RUN apt-get update
RUN apt-get install -y apt-utils vim curl apache2 apache2-utils
RUN apt-get -y install python3 libapache2-mod-wsgi-py3
RUN ln /usr/bin/python3 /usr/bin/python
RUN apt-get -y install python3-pip
RUN ln /usr/bin/pip3 /usr/bin/pip
RUN pip install --upgrade pip

COPY apache2.conf /etc/apache2/
COPY serve-cgi-bin.conf /etc/apache2/conf-available/
COPY cgi-bin /var/www/cgi-bin/ 
COPY html  /var/www/html/

#a2enmod cgi

EXPOSE 80 3500
CMD ["apache2ctl", "-D", "FOREGROUND"]  
  
  
  
  
 
