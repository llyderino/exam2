# Use the official NGINX image from Docker Hub
FROM nginx:alpine

# Remove the default NGINX static website
RUN rm -rf /usr/share/nginx/html/*

# Copy the local static website to the NGINX container
COPY index.html /usr/share/nginx/html/

# Expose port 80 to be able to access the website
EXPOSE 80

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]
