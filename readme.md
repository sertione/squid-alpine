# Squid Proxy Server on Alpine with Basic Auth

Quickly set up a Squid proxy server with basic authentication using Docker and Docker Compose.

## Quick Start

1. **Prerequisites:** Ensure Docker and Docker Compose are installed.

2. **Clone the Repo:**
   ```
   git clone https://github.com/sertione/squid-alpine.git
   ```

3. **Configure Credentials:** In `docker-compose.yml`, set `PROXY_USER` and `PROXY_PASSWORD` to your desired credentials. Optionally, adjust the port.

4. **Start the Proxy:**
   ```
   docker-compose up -d --build
   ```

5. **Use the Proxy:** Configure your application with the proxy URL:
   ```
   http://your_username:your_password@your_server_ip:8084
   ```

Replace `your_username`, `your_password`, and `your_server_ip` with your actual user credentials and server IP. Adjust `8084` if you've changed the default port.
