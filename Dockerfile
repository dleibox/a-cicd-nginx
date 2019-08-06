FROM nginx:1.17.2-alpine

# Add Maintainer Info
MAINTAINER Daniel Lei <dleibox@gmail.com>

# Add a volume pointing to /tmp
VOLUME /tmp

# Go to work directory
# WORKDIR /etc/nginx

EXPOSE 80 443

ADD ./*.conf /etc/nginx/conf.d/

CMD ["nginx", "-g", "daemon off;"]