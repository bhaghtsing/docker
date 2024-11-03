# Use the latest Nginx image
FROM nginx:latest 

# Maintainer information
LABEL maintainer="jaidevbhaght92@gmail.com"

# Remove the default Nginx index.html file
RUN rm /usr/share/nginx/html/index.html

# Copy your custom index.html to the Nginx HTML directory
COPY index.html /usr/share/nginx/html/

# Expose port 80 to allow traffic to the Nginx server
EXPOSE 80

# Command to run Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
