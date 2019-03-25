  FROM centos:7
  LABEL MAINTAINER  ajeetraina@gmail.com
  
  RUN yum install -y https://centos7.iuscommunity.org/ius-release.rpm
  RUN yum update -y
  RUN yum install -y python36u python36u-libs python36u-devel python36u-pip
  RUN yum install -y httpd
  COPY cgi-bin /var/www/cgi-bin/
  COPY html  /var/www/html/
  CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]

  EXPOSE 80
