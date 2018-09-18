FROM centos:centos7

RUN yum update -y
RUN yum install -y java-1.8.0-openjdk-devel curl unzip


RUN curl -O -s -k -L -C - https://vorboss.dl.sourceforge.net/project/lportal/Liferay%20Portal/7.1.0%20GA1/liferay-ce-portal-tomcat-7.1.0-ga1-20180703012531655.zip
#ADD liferay-ce-portal-tomcat-7.1.0-ga1-20180703012531655.zip /

RUN unzip liferay-ce-portal-tomcat-7.1.0-ga1-20180703012531655.zip
RUN rm liferay-ce-portal-tomcat-7.1.0-ga1-20180703012531655.zip

EXPOSE 8080

RUN ln -s liferay-ce-portal-7.1.0-ga1 /liferay
RUN ln -s liferay/tomcat-9.0.6 /tomcat

RUN ln -s liferay/deploy /deploy
VOLUME /deploy


ENTRYPOINT tomcat/bin/catalina.sh run

