# Use an official NGINX image as the base image
FROM nginx:alpine

# Copy the custom index.html to the default NGINX static folder
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80
