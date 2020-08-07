############################################################
# Dockerfile to build CAT 3 tier app
# Based on Centos
############################################################

FROM centos/systemd


RUN echo "This is the section where we prepare centos server for the application :) "

RUN yum makecache
RUN yum update -y 
RUN yum install sudo -y
RUN yum install git -y 
RUN yum install java-1.8.0-openjdk-devel -y
RUN yum install maven -y 
RUN yum install wget -y 
RUN wget http://repo.mysql.com/mysql-community-release-el7-5.noarch.rpm 
RUN rpm -ivh mysql-community-release-el7-5.noarch.rpm  
RUN yum update -y 
RUN sudo yum install mysql-server -y 
RUN sudo systemctl start mysqld 
RUN yum install curl -y 
RUN curl -sL https://rpm.nodesource.com/setup_10.x |sudo  bash -
RUN yum install nodejs -y 
RUN git clone https://github.com/egt-interactive/devops-task.git





