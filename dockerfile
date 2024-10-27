# Use the latest Nginx image
FROM nginx:latest 

# Maintainer information
LABEL maintainer="jaidevbhaght92@gmail.com"
sudo apt update
sudo apt install nginx -y
sudo systemctl start nginx
sudo systemctl enable nginx
sudo systemctl status nginx
cd /var/www/html/
sudo rm -rf index.html
nano index.html
COPY index.html /usr/share/nginx/html/

CMD ["nginx", "-g", "daemon off;"]
