# Flipper - An Interactive way to Build, Ship & Navigate your Docker containers. 

Flipper is a Docker playground which allows users to run Docker commands in a matter of seconds. It gives the experience of having a free RHEL Virtual Machine in browser, where you can build and run Docker containers.

# Highlights:

- Flipper uses Python as a backend scripting language
- Flipper uses Python-CGI in order to interact through a Web server with a client running a Web browser.
- It uses HTML/CSS as a Front-end language.
- It can be hosted on your Laptop flawlessly

# How to Test Drive Flipper

Flipper is supplied as Docker Image by name "shellinabox_test:v1". It allows access to the command-line from web based
terminal emulator.

```
docker pull shellinabox_test:v1
````

# Reference:

## How to get IP Address of the Docker container

```
docker inspect -f {{.NetworkSettings.IPAddress}} dock1
```

# Manual Steps:

## Pre-requisite:

- Red Hat Enterprise Linux 7.5

## Step:1 - Installing Apache Server

```
yum install httpd
```

## Configuration Settings

Copy the contents under /var/www/cgi-bin/

```
cd /var/www/cgi-bin/
```

## Paste the contents of the cgi-bin.

Change directory to /var/www/html directory as shown below:

```
cd /var/www/html/
```

Paste the contents of the html file.


## Run this command.

```
systemctl restart httpd
```

## Setting up static IP

Edit /etc/sysconfig/network-scripts/ifcfg-enp0s3 where as enp0s3 is network interface name with the below entry:

```
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
```


Exit, press esc, :wq! to save. 

## Running the below command:

```
systemctl restart network
systemctl restart httpd           
````




