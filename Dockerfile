FROM alpine:latest

# Install Squid and apache2-utils
RUN apk add --no-cache squid apache2-utils

# Copy the Squid configuration file
COPY squid.conf /etc/squid/squid.conf

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Expose the default Squid port
EXPOSE 3128

# Set the entrypoint script
ENTRYPOINT ["/entrypoint.sh"]