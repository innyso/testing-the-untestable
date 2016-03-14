FROM alpine
MAINTAINER IS

# Install Nginx
RUN apk update && apk add nginx \
# forward request and error logs to docker log collector
&& ln -sf /dev/stdout /var/log/nginx/access.log \
&& ln -sf /dev/stderr /var/log/nginx/error.log

EXPOSE 80 443

CMD ["nginx","-g","daemon off;"]
