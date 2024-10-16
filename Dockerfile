# FROM nginx:stable-alpine3.20-perl

# # Copy your Nginx configuration file
# COPY nginx.conf /etc/nginx/nginx.conf

# # Expose port 80
# EXPOSE 80
FROM kong:2.8.5-alpine

COPY kong.yaml /config/kong.yaml

USER root

ENV KONG_PROXY_LISTEN 0.0.0.0:8000
ENV KONG_DATABASE off
ENV KONG_DECLARATIVE_CONFIG /config/kong.yaml
ENV PORT 8000

EXPOSE 8000

RUN kong start