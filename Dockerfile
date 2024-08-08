FROM centos:latest
RUN yum install httpd zip unzip -y/var/www/html/
ADD https://www.free-css.com/assets/files/free-css-templates/download/page296/oxer.zip 
COPY oxer.zip /var/www/html
WORKDIR /var/www/html
RUN unzip oxer.zip
RUN rm -rf oxer.zip &&\
cp -rf oxer-html/* . &&\
rm -rf oxer-html* 
EXPOSE 80
CMD ["/usr/sbin/httpd ","-D","FOREGROUND"]
