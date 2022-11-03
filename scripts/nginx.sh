#!/bin/bash

sudo cp -rf django.conf /etc/nginx/sites-available
chmod 710 /var/lib/jenkins/workspace/task

sudo ln -s /etc/nginx/sites-available/django /etc/nginx/sites-enabled
sudo nginx -t
sudo systemctl start nginx
sudo systemctl enable nginx
echo "Nginx has been started"
sudo systemctl status nginx
