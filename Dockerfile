FROM ubuntu

RUN apt-get update
RUN apt-get install -y apt-utils vim curl apache2 apache2-utils
RUN apt-get -y install python3 libapache2-mod-wsgi-py3
RUN ln /usr/bin/python3 /usr/bin/python
RUN apt-get -y install python3-pip
RUN ln /usr/bin/pip3 /usr/bin/pip
RUN pip install --upgrade pip
RUN pip install django ptvsd
COPY 000-default.conf /etc/apache2/sites-enabled/000-default.conf
COPY apache2.conf /etc/apache2/apache2.conf
RUN a2enmod cgi
EXPOSE 80 3500
CMD ["apache2ctl", "-D", "FOREGROUND"]
