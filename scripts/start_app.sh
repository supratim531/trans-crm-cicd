#!/usr/bin/env bash

python manage.py makemigrations
python manage.py migrate
# python manage.py collectstatic

# Restart:
sudo service nginx restart
sudo service gunicorn restart

# # Check the status:
# sudo systemctl status nginx
# sudo systemctl status gunicorn

# sudo tail -f /var/log/nginx/error.log
# sudo systemctl reload nginx
# sudo tail -f /var/log/nginx/error.log
# sudo nginx -t
