FROM nginx:stable-alpine3.20-perl

# Copy your Nginx configuration file
COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 80
EXPOSE 80