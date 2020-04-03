#!/bin/sh
# Caddy new configuration
mkdir www
cat <<-EOF > /usr/local/Caddyfile
:8081
root /usr/local/www
EOF
echo $TEST >www/index.html
# Run Caddy
/usr/local/caddy
