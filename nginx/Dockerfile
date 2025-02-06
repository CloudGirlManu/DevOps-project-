FROM nginx


RUN apt-get update -y && apt-get install -y apache2-utils && rm -rf /var/lib/apt/lists/*

ENV BASIC_USERNAME=username
ENV BASIC_PASSWORD=password

ENV FORWARD_HOST=google.com
ENV FORWARD_PORT=80

# COPY .htpasswd /etc/nginx/.htpasswd
COPY default.conf default.conf
COPY run.sh ./
RUN chmod 0755 ./run.sh
CMD [ "./run.sh" ]

# COPY ./page-not-found.html /var/www/html/page-not-found.html
# COPY ./includes/ /etc/nginx/includes/
# COPY ./ssl/ /etc/ssl/certs/nginx/