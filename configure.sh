#!/bin/sh
# Caddy new configuration
cat <<-EOF > /usr/local/Caddyfile
:8081
EOF
# Run Caddy
/usr/local/caddy
