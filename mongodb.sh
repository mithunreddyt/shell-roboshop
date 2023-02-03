#!/usr/bin/env bash

yum install mongodb-org -y

systemctl enable mongod
systemctl start mongod

sed -e -i 's/127.0.0.1/0.0.0.0/g' /etc/mongod.conf

systemctl restart mongod