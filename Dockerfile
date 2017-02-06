FROM centos:6
MAINTAINER Avigayil
RUN yum install -y java-1.8.0-openjdk-devel.x86_64
RUN yum install -y tomcat6

EXPOSE 8080
ENTRYPOINT /etc/init.d/tomcat6 start && tail -f  /var/log/tomcat6/catalina.out
