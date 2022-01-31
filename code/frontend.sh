#!/bin/bash
su root
 yum install nginx -y
  systemctl enable nginx
  systemctl start nginx
