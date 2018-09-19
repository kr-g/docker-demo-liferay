# docker-demo-liferay

sample from my blog https://another-software-development-blog.blogspot.com


liferay ce portal bundle with tomcat 7.1.0-ga1
with tomcat and postgresql


start image with

    docker run -d -p 8080:8080 --name liferay anothersoftwaredevelopmentblog/docker-demo-liferay

start image with (if you plan to deploy into ref. https://another-software-development-blog.blogspot.de/2016/11/liferay-docker-again.html )

    docker run -d -p 8080:8080 -p 8082:5432 -v ~/deploy-ext:/deploy --name liferay anothersoftwaredevelopmentblog/docker-demo-liferay

this also expose port 5432 from the dockerized postgresql to port 8082 on localhost


see status with

    docker ps -l


see logs with

    docker logs liferay -f


after basic configuration is done you need to restart the image

stop image with

    docker stop liferay

start image with

    docker start liferay

