#Using nginx to host the website
FROM nginx:alpine
#Copy the index.html file 
COPY index.html /usr/share/nginx/html/index.html
EXPOSE 80
