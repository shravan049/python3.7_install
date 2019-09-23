#!/usr/bin/env bash

echo "Checking kernel version"
uname -r


echo "Checking Unix Os version"

cat /etc/centos-release

#installing required package

yum install gcc openssl-devel bzip2-devel libffi libffi-devel -y

#Download Package

cd /root
wget "https://www.python.org/ftp/python/3.7.3/Python-3.7.3.tgz"

tar xzf Python-3.7.3.tgz
cd Python*
./configure --enable-optimizations
make altinstall

#install pip
yum -y update
yum install python-pip -y
yum info python-pip

rm -rf Python-3.7*
echo "Checking Python installed version"
python3.7 -V




