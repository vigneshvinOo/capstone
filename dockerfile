# Use an official Nginx image to serve the content
FROM nginx:alpine

# Copy the built React app to the Nginx html directory
COPY build /usr/share/nginx/html

EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
