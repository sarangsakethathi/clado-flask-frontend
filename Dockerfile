FROM ubuntu:22.04
RUN apt-get update
RUN apt-get install nginx -y
RUN unlink /etc/nginx/sites-enabled/default
ADD oxer-html /var/www/oxer-html/
ADD config/example.com /etc/nginx/sites-enabled/example.com
CMD ["nginx", "-g", "daemon off;"]
