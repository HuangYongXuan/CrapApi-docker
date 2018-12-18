FROM tomcat:latest
MAINTAINER 754060604@qq.com

RUN rm -rf /usr/local/tomcat/webapps/*
COPY ROOT.war /usr/local/tomcat/webapps/

EXPOSE 8080
CMD [ "catalina.sh", "run"]
