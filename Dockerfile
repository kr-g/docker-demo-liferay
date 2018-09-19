FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install -y openjdk-8-jdk curl unzip sudo
RUN apt-get install -y postgresql


RUN curl -O -s -k -L -C - https://vorboss.dl.sourceforge.net/project/lportal/Liferay%20Portal/7.1.0%20GA1/liferay-ce-portal-tomcat-7.1.0-ga1-20180703012531655.zip
#ADD liferay-ce-portal-tomcat-7.1.0-ga1-20180703012531655.zip /

RUN unzip liferay-ce-portal-tomcat-7.1.0-ga1-20180703012531655.zip
RUN rm liferay-ce-portal-tomcat-7.1.0-ga1-20180703012531655.zip

EXPOSE 8080
EXPOSE 5432

RUN ln -s liferay-ce-portal-7.1.0-ga1 /liferay
RUN ln -s liferay/tomcat-9.0.6 /tomcat

RUN ln -s liferay/deploy /deploy
VOLUME /deploy

ADD startup.sh /
ADD configure-db.sh /
ADD portal-ext.properties /liferay/

RUN chmod +x /*.sh
RUN /configure-db.sh


ENTRYPOINT /startup.sh

