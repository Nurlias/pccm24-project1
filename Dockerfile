FROM ubuntu:22.04

LABEL maintener="Nurlias"
LABEL email="nurliasfy1104@gmail.com"

RUN apt update && apt install -y apache2
RUN mkdir -p /var/www/html

COPY index.html /var/www/html/

CMD ["apachectl", "-D", "FOREGROUND"]

WORKDIR /var/www/html

EXPOSE 80 443
