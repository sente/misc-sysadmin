#!/bin/bash

set -x

apt-get update
apt-get install git-core
apt-get install python-pip
apt-get install python-dev
apt-get install nmap
apt-get install netcat
apt-get install sqlite3
apt-get install liblwp-online-perl
apt-get install nginx
apt-get upgrade
/etc/init.d/nginx start


pip install -U pip
pip install virtualenv
pip install virtualenvwrapper
pip install ipython
