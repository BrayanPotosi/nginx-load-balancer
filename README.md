# Nginx load balancer - reverse proxy

## Description
This project is a Node.js application that serves a static HTML file using the Express framework. It is designed to be used with load balancing through NGINX.
The configuration includes three Node.js services, and NGINX will automatically distribute the traffic between them.
In the container logs, you will see which service is receiving the request by this message:
Request served by App1,
Request served by App2, 
or Request served by App3.

We create a self-signed SSL certificate, and HTTP requests to port 80 will be redirected to HTTPS on port 443. The certificate is automatically created in the entrypoint.

## Requirements
- Docker
- Docker Compose

## Installation
1. Clone the repository:
    ```sh
    git clone git@github.com:BrayanPotosi/nginx-load-balancer.git
    cd nginx-load-balancer
    ```

2. Build and start the Docker containers:
    ```sh
    docker-compose up --build
   or 
   docker compose up --build
    ```
 ## Usage
- Open your browser and go to `http://localhost:80/` or `https://localhost:443/` to see the application running.