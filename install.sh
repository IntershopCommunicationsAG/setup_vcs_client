#!/bin/sh

yum install git -y

if [ ! -f /etc/yum.repos.d/wandisco-svn.repo ]
then
	cat > /etc/yum.repos.d/wandisco-svn.repo << EOL
[WandiscoSVN]
name=Wandisco SVN Repo
baseurl=http://opensource.wandisco.com/centos/7/svn-1.8/RPMS/\$basearch/
enabled=1
gpgcheck=0
EOL

	yum install subversion -y

fi