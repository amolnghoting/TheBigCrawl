#!/bin/bash

#install java
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java8-installer
sudo apt-get install oracle-java8-set-default
#install ant
sudo apt-get install ant
#download nutch and compile
wget http://apache.mirrors.lucidnetworks.net/nutch/1.9/apache-nutch-1.9-src.zip
unzip apache-nutch-1.9-src.zip
cd apache-nutch-1.9/
ant
cd ..
#setup solr
wget http://www.carfab.com/apachesoftware/lucene/solr/4.10.2/solr-4.10.2-src.tgz
tar -xvf solr-4.10.2-src.tgz
cd solr-4.10.2/
ant ivy-bootstrap
ant compile

