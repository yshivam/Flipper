FROM syaduka/portalui:latest

LABEL MAINTAINER  yaduka.shivam@gmail.com

COPY cgi-bin /var/www/cgi-bin/ 
COPY html  /var/www/html/

COPY service-script.sh service-script.sh


#chmod a+x /var/www/cgi-bin/caas_docker.py
#chmod 666 /var/run/docker.sock

EXPOSE 80 3500

CMD ["./service-script.sh","-D","FOREGROUND"]

#service apache2 restart



##################Orignal Content################
#FROM ubuntu
#LABEL MAINTAINER  yaduka.shivam@gmail.com
#RUN apt-get update
#RUN apt-get install -y apt-utils vim curl apache2 apache2-utils
#RUN apt-get -y install python3 libapache2-mod-wsgi-py3
#RUN ln /usr/bin/python3 /usr/bin/python
#RUN apt-get -y install python3-pip
#RUN ln /usr/bin/pip3 /usr/bin/pip
#RUN pip install --upgrade pip
#curl -sSl https://get.docker.com/ | sh
#COPY apache2.conf /etc/apache2/
#COPY serve-cgi-bin.conf /etc/apache2/conf-available/
#CMD ["apache2ctl", "-D", "FOREGROUND"]  
#a2enmod cgi
  
  
  
  
 
