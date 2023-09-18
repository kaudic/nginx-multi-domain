# Use an official NGINX image as the base image
FROM nginx:latest

# Copy your custom NGINX configuration file(s) into the container
COPY ./config/nginx.conf /etc/nginx/nginx.conf

# Expose port 80 (HTTP)
EXPOSE 80
EXPOSE 443

# Start NGINX in the foreground
CMD ["nginx", "-g", "daemon off;"]