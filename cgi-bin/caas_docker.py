#!/usr/bin/python3

print("content-type: text/html")
print("")

import subprocess
import cgi
#import crypt
#import getpass

form = cgi.FieldStorage()
usr = form.getvalue('usr')
port = form.getvalue('port')


#usr = "test"
#port = "786"
#usr = input("enter new user you want to add : ")
#port = input("enter a number (1024 - 65000) : ")
#passw = "iuc"
#passw = crypt.crypt(passw)
#a=subprocess.getstatusoutput("useradd -p '"+passw+"' "+usr)
#if a[0] == 0:
#container_name = sp.getstatusoutput("ansible-playbook staas/shellinabox.yml --extra-vars='x={0}'".format(cname))
#host_ip = subprocess.getoutput("ifconfig eth1 | grep "inet addr" | cut -d ':' -f 2 | cut -d ' ' -f 1")


#a1 = subprocess.getoutput("docker build -t shellinabox_test:v1 .")
b = subprocess.getstatusoutput("docker run -dit -p {pot}:4200 --name {name} syaduka/shellinabox_final:v1".format(pot=port,name=usr))
#print(b)
if b[0] == 0:
	print("<br><br>")
	#y = subprocess.getoutput("docker exec -it {0} hostname -i".format(usr))
	#print(y)	
	x = subprocess.getoutput("docker inspect -f '{use}' {usr1}".format( use='{{ .NetworkSettings.IPAddress }}',usr1=usr))	
	#x = subprocess.getoutput("docker inspect -f '{{ .NetworkSettings.IPAddress }}' {usr1}".format(usr1=usr))
	print("<strong><br><br>USER NAME: root")	
	print("<br>DEFAULT PASSWORD: iuc")
	print("<br>IP ADDRESS: ")	
	print(x)	
	print("</strong> <br> <br> <br>")	
	print("""
	</div>
	<div style="padding:20px">
	<center><a href='http://""")
	print("""{0}:4200' target="Beatles">DOCKER LAUNCH</a>
	<iframe frameborder="0" name="Beatles" height="70%" width="100%">            
	</center>
	</div>  """.format(x))

else:
	print('<h3><br><br><br><br><br><br><br><br><br><marquee behavior="alternate">OppS! That Did not work, let us s Try with a different name, Shall we?</marquee></h3>')

