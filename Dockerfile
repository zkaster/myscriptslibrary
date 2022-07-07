FROM alpine


RUN apk add --no-cache nginx && mkdir -p /run/nginx

COPY test.conf /etc/nginx/http.d/

COPY . /opt/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
