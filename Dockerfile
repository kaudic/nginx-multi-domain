# Use an official NGINX image as the base image
FROM nginx:latest

# Remove default nginx configuration
RUN rm /etc/nginx/conf.d/default.conf

# Copy your custom NGINX configuration file(s) into the container
COPY ./config/nginx.conf /etc/nginx/conf.d/

# Expose port 80 (HTTP)
EXPOSE 80
EXPOSE 443

# Start NGINX in the foreground
CMD ["nginx", "-g", "daemon off;"]