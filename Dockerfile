FROM centos:centos7
MAINTAINER Admin <admin@admin.com>

# "CMD" do at docker run
CMD echo "now running..."

# "RUN" do at docker build
RUN yum install -y httpd

# copy directory
ADD ./html /var/www/html

# open port
EXPOSE 80

# start httpd when docker run
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
