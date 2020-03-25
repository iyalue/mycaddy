#!/bin/sh
# Caddy new configuration
cat <<-EOF > /usr/bin/caddy/Caddyfile
$CONFIG
EOF
# Run Caddy
/usr/bin/caddy/Caddy 
