FROM nginx:alpine

COPY nginx.conf /etc/nginx/nginx.conf

RUN apk update && apk add bash
# && apt add openssl 
#RUN mkdir -p ./nginx/ssl

#RUN openssl req -new -newkey rsa:4096 -x509 -sha512 -days 365 -nodes -out ./nginx/ssl/nginx.crt -keyout ./nginx/ssl/nginx.key
#RUN openssl dhparam -out ./nginx/ssl/dhparam.pem 4096



