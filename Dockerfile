FROM centos
RUN yum install httpd git -y
WORKDIR /var/www/
RUN rm -rf html
RUN git clone  https://github.com/redashu/beginner-html-site-styled.git
RUN mv beginner-html-site-styled html
EXPOSE 80
ENTRYPOINT httpd -DFOREGROUND
