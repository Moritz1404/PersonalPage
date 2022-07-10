FROM nginx:latest

COPY . /usr/share/nginx/html
RUN rm /etc/nginx/conf.d/default.conf
COPY nginx/nginx.conf /etc/nginx/conf.d
RUN mkdir /etc/nginx/ssl
RUN chmod 700 /etc/nginx/ssl

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
