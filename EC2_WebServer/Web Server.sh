#!/bin/bash
yum -y update
yum -y install httpd
echo "<html>
<body bgcolor="green">
<center>
<h2><font color=blue>Hello from Mobidev!</font></h2>
<font color=yellow>www.mobidev.biz</font>
</center>
</body>
</html> " > /var/www/html/index.html
sudo service httpd start
chkconfig httpd on