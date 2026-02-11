FROM registry.access.redhat.com/ubi8/httpd-24:latest

COPY devfiles/ /var/www/html/devfiles/

USER root
RUN chown -R 1001:0 /var/www/html
USER 1001

EXPOSE 8080