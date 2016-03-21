FROM alpine
MAINTAINER IS

# Install Nginx
RUN apk update && apk add nginx \
# forward request and error logs to docker log collector
&& ln -sf /dev/stdout /var/log/nginx/access.log \
&& ln -sf /dev/stderr /var/log/nginx/error.log

COPY sample.conf /etc/nginx/sites-enabled/sample.conf
COPY nginx.conf /etc/nginx/nginx.conf
COPY sample.html /www/data/sample.html
EXPOSE 80 443

CMD ["nginx","-g","daemon off;"]
