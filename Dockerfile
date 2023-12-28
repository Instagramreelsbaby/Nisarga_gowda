# Use the official Nginx Alpine image as the base image
FROM nginx:alpine

# Remove the default Nginx configuration
RUN rm -v /etc/nginx/nginx.conf /etc/nginx/conf.d/default.conf

# Copy your HTML file into the container
COPY index.html /usr/share/nginx/html

# Expose port 80 for the Nginx server
EXPOSE 80

# Start Nginx when the container runs
CMD ["nginx", "-g", "daemon off;"]
