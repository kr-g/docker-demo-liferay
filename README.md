# docker-demo-liferay

sample from my blog https://another-software-development-blog.blogspot.de


liferay ce 7 ga 3 with tomcat and postgresql 9.5


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

