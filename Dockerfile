# Use the official Nginx Alpine image as the base image
FROM nginx:alpine

# Copy your HTML file into the container
COPY index.html /usr/share/nginx/html

# Expose port 80 for the Nginx server
EXPOSE 80

# Start Nginx when the container runs
CMD ["nginx", "-g", "daemon off;"]
