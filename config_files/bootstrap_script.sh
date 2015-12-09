#!/bin/bash
yum update -y
yum install -y git mysql-devel lapack-devel nginx

cd /etc/nginx
mv nginx.conf nginx.conf.bak
aws s3 cp s3://oudtestbucket/nginx.conf .
mkdir sites-enabled
aws s3 cp s3://oudtestbucket/oud_nginx.conf ./sites-enabled/oud_nginx.conf
