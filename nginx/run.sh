
#!/bin/sh

export BASIC_USERNAME BASIC_PASSWORD FORWARD_HOST FORWARD_PORT
envsubst '$BASIC_USERNAME $BASIC_PASSWORD $FORWARD_HOST $FORWARD_PORT' < default.conf > /etc/nginx/conf.d/default.conf


# htpasswd for basic authentication
htpasswd -c -b /etc/nginx/.htpasswd $BASIC_USERNAME $BASIC_PASSWORD

nginx -g "daemon off;"