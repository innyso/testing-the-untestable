FROM alpine
MAINTAINER IS

# Install Nginx
RUN apk update && apk add nginx \
# forward request and error logs to docker log collector
&& ln -sf /dev/stdout /var/log/nginx/access.log \
&& ln -sf /dev/stderr /var/log/nginx/error.log

COPY nginx.conf /etc/nginx/nginx.conf
EXPOSE 80 443
VOLUME ["/etc/nginx/sites-enabled","/www/data/"]

CMD ["nginx","-g","daemon off;"]
