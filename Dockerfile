FROM ubuntu:16.04

RUN apt-get update 
RUN apt-get install -y openjdk-8-jdk curl unzip


RUN curl -O -s -k -L -C - https://sourceforge.net/projects/lportal/files/Liferay%20Portal/7.0.0%20GA1/liferay-portal-tomcat-7.0-ce-ga1-20160331161017956.zip
#ADD liferay-portal-tomcat-7.0-ce-ga1-20160331161017956.zip /

RUN unzip liferay-portal-tomcat-7.0-ce-ga1-20160331161017956.zip
RUN rm liferay-portal-tomcat-7.0-ce-ga1-20160331161017956.zip

EXPOSE 8080

RUN ln -s liferay-portal-7.0-ce-ga1/deploy /deploy
VOLUME /deploy


ENTRYPOINT liferay-portal-7.0-ce-ga1/tomcat-8.0.32/bin/catalina.sh run

