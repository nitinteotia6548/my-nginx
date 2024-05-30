# Use the official NGINX image from the Docker Hub
FROM nginx:latest

# Copy custom configuration file from the current directory to the NGINX configuration directory
COPY nginx.conf /etc/nginx/nginx.conf

# Copy the static website files to the default NGINX HTML directory
COPY ./html /usr/share/nginx/html

# Expose port 80 to the outside world
EXPOSE 80

# Start NGINX when the container launches
CMD ["nginx", "-g", "daemon off;"]

