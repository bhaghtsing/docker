FROM nginx:latest 
MAINTAINER jaidevbhaght92@gmail.com 
RUN apt install -y curl net-tools jq 
COPY index.html /usr/share/nginx/html/
COPY error.html /usr/share/nginx/html/
COPY ngnix_default.config /etc/nginx/sites-enabled/default
CMD ["nginx", "-g", "daemon off;"]
