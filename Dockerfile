FROM tomcat:latest
MAINTAINER 754060604@qq.com

RUN rm -rf /app/*
COPY api.war /app/

ENTRYPOINT ['/app-entrypoint.sh']
