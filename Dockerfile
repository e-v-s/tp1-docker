FROM ubuntu:20.04
RUN apt-get update -y && apt-get install nginx -y
COPY index.html /var/www/html 
ENTRYPOINT ["nginx"]
EXPOSE 80
CMD ["-g", " daemon off;" ]
ENV estagio=DEV

