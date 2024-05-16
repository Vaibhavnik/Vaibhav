# Use the official Nginx image as a base
FROM nginx:latest

# Copy the custom index.html to the default nginx html location
COPY web/index.html /usr/share/nginx/html/index.html

# Expose port 80 to the outside world
EXPOSE 3000

# Start nginx server
CMD ["nginx", "-g", "daemon off;"]
