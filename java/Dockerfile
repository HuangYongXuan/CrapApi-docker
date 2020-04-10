FROM centos:latest
MAINTAINER 754060604@qq.com

COPY server.xml settings.xml /home/

RUN yum install -y java-1.8.0-openjdk*
RUN rm -rf /etc/yum.repos.d/* && \
    curl -o /etc/yum.repos.d/Centos-7.repo http://mirrors.aliyun.com/repo/Centos-7.repo && \
    curl -o /etc/yum.repos.d/epel-7.repo http://mirrors.aliyun.com/repo/epel-7.repo && \
    yum install -y wget git maven && \
    rm -rf /etc/maven/settings.xml && \
    mv /home/settings.xml /etc/maven/

RUN mkdir /home/git/ && cd /home/git/ && git clone https://gitee.com/CrapApi/CrapApi.git

RUN cd /home/git/CrapApi && mvn -f ./api/pom.xml compile

EXPOSE 8080
