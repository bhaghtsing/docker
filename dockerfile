FROM nginx:latest 
MAINTAINER jaidevbhaght92@gmail.com 
RUN apt install -y curl net-tools jq 
COPY index.html /usr/share/nginx/html/
COPY error.html /usr/share/nginx/html/
Copy Jenkins.config /user/share/nginx/html
mv jenkins.config /etc/nginx/sites-enabled/default
sudo ln -s /etc/nginx/sites-available/jenkins /etc/nginx/sites-enabled/
sudo systemctl restart nginx
CMD ["nginx", "-g", "daemon off;"]
