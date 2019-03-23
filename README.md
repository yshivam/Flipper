# Flipper - An Interactive way to Build, Ship & Navigate your Docker containers. 





OS PREFERRED : RHEL V7.5

##############USES Apache server##############################
yum install httpd

now, go to
            cd /var/www/cgi-bin/
and paste the contents of the cgi-bin.
again. go to
            cd /var/www/html/
and paste the contents of the html file.
run this command.

systemctl restart httpd

##############SETUP STATIC IP, run this command in terminal.#######################
setup the static IP TO: 192.168.43.7
            vi /etc/sysconfig/network-scripts/ifcfg-enp0s3 
enp0s3 - Internet card name.
Modify the content of file.

TYPE=Ethernet
PROXY_METHOD=none
BROWSER_ONLY=no
BOOTPROTO=static
DEFROUTE=yes
IPV4_FAILURE_FATAL=no
IPV6INIT=yes
IPV6_AUTOCONF=yes
IPV6_DEFROUTE=yes
IPV6_FAILURE_FATAL=no
IPV6_ADDR_GEN_MODE=stable-privacy
NAME=enp0s3
UUID=123dbc95-f4f7-49f8-8d48-727ff375d4cc
DEVICE=enp0s3
ONBOOT=yes
IPADDR=192.168.43.7
NETMASK=255.255.255.0
GATEWAY=192.168.43.1
DNS1=192.168.43.1

to exit
press esc, :wq! to save. Once reached terminal, type this code
            systemctl restart network
            systemctl restart httpd           
#################################################################################

ansible
Docker
hadoop v1


