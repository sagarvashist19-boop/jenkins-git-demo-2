# Simple Nginx Image
FROM nginx:latest

# Remove default nginx html
RUN rm -rf /usr/share/nginx/html/*

# Copy custom index file (optional)
COPY index.html /usr/share/nginx/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]


