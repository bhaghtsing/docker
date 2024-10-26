# Use the latest Nginx image
FROM nginx:latest 

# Maintainer information
LABEL maintainer="jaidevbhaght92@gmail.com"

# Install required packages
RUN apt-get update && apt-get install -y curl net-tools jq && \
    rm -rf /var/lib/apt/lists/*

# Copy HTML files
COPY index.html /usr/share/nginx/html/
COPY error.html /usr/share/nginx/html/

# Copy the Nginx configuration file
COPY jenkins.config /etc/nginx/sites-available/jenkins

# Enable the Jenkins configuration and disable the default site
RUN ln -s /etc/nginx/sites-available/jenkins /etc/nginx/sites-enabled/ && \
    rm /etc/nginx/sites-enabled/default

# Run Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
