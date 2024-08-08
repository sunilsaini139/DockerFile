FROM centos:latest
RUN yum install httpd zip unzip -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page296/neogym.zip /var/www/html
WORKDIR /var/www/html
RUN unzip neogym.zip
RUN rm -rf neogym.zip &&\
cp -rf neogym/* . &&\
rm -rf neogy* &&\
mkdir sunil &&\
touch sunil/sunil.txt
EXPOSE 80
CMD ["/usr/sbin/httpd ","-D","FOREGROUND"]
