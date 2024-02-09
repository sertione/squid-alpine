
# Squid Proxy Server on Alpine with Basic Auth

This guide will help you set up a Squid proxy server on Alpine Linux, featuring basic authentication. This setup is ideal for controlling access and securing your internet connection.

## Getting Started

Before you begin, ensure you have Docker and Docker Compose installed on your system.

### Installation Steps

1. Clone the Repository

   Clone the repository to your local machine using the following command:

   
   git clone https://github.com/sertione/squid-alpine.git
   

2. Configure Environment Variables

   Navigate to the cloned repository directory and open the docker-compose.yml file. Adjust the environment variables PROXY_USER and PROXY_PASSWORD to your desired credentials. You may also change the port if necessary.

   Example snippet from docker-compose.yml:
   
   environment:
     PROXY_USER: your_username
     PROXY_PASSWORD: your_password
   ports:
     - "8084:3128"
   

   Replace your_username and your_password with your actual credentials. Adjust the port mapping (8084:3128) if you wish to use a different port on your host machine.

3. Start the Proxy Server

   Launch the proxy server using the following command:

   
   docker-compose up -d --build
   

   This command builds the Docker image (if not already built) and starts the proxy server in detached mode.

### Using the Proxy Server

To use the proxy server, configure your application or system settings with the proxy URL in the following format:

http://your_username:your_password@your_server_ip:8084


Replace your_username and your_password with the credentials you set in the docker-compose.yml file. Substitute your_server_ip with the IP address of your server hosting the proxy, and 8084 with the port you configured if you changed it from the default.

### Conclusion

You now have a Squid proxy server running on Alpine Linux with basic authentication. This setup allows you to securely manage internet access for your applications or devices.

---

Please ensure that you replace placeholders (like your_username, your_password, and your_server_ip) with actual values relevant to your setup.