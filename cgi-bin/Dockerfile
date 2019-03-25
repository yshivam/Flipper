FROM syaduka/shellinabox_final:v1
LABEL MAINTAINER yaduka.shivam@gmail.com

ENV URL=https://download.docker.com/linux/centos/docker-ce.repo

RUN yum update -y 
RUN yum install -y yum-utils && \
                   device-mapper-persistent-data && \
                   lvm2

RUN yum-config-manager --add-repo $URL
RUN yum install docker-ce docker-ce-cli containerd.io -y

EXPOSE 4200
