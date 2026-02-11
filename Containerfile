# Use ubi8/httpd-24 ou nginx
FROM registry.access.redhat.com/ubi8/httpd-24:latest

# Copia os devfiles para a pasta padrão do Apache
COPY devfiles/ /var/www/html/devfiles/

# Ajusta permissões (padrão OpenShift)
USER root
RUN chown -R 1001:0 /var/www/html
USER 1001

EXPOSE 8080