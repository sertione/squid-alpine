#!/bin/sh

# Check if both PROXY_USER and PROXY_PASSWORD are set
if [ -n "$PROXY_USER" ] && [ -n "$PROXY_PASSWORD" ]; then
    echo "Creating user for Squid authentication..."
    htpasswd -cb /etc/squid/passwd "$PROXY_USER" "$PROXY_PASSWORD"
else
    echo "Environment variables PROXY_USER and/or PROXY_PASSWORD not set."
fi

# Start Squid
exec squid -N