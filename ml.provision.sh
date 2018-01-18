#!/bin/bash
yum install lsb-core-amd64 gdb libc.so.6 vim java -y

useradd marklogic 

echo "MARKLOGIC_USER=marklogic" > /etc/marklogic.conf

cd /vagrant/

rpm -i /vagrant/MarkLogic-9.0.rpm

/etc/init.d/MarkLogic start
