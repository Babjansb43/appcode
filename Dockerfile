FROM httpd
COPY . /usr/share/nginx/html
CMD [systemctl start httpd]