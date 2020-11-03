FROM httpd:2.4
ADD https://cloud-images.ubuntu.com/focal/current/focal-server-cloudimg-amd64.img /usr/local/apache2/htdocs/
RUN cd /usr/local/apache2/htdocs/ && chmod 604 focal-server-cloudimg-amd64.img
