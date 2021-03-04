# REPO ARCHIVED (2021-03-04)

this repo is archived and not maintained longer 
since demo code is related to an older version

---


# docker-demo-liferay

liferay ce portal bundle with tomcat 7.1.0-ga1 with hypersonic db



sample from my blog https://another-software-development-blog.blogspot.com


in case you want to use postgresql checkout the branch "postgres"


start image with

    docker run -d -p 8080:8080 --name liferay anothersoftwaredevelopmentblog/docker-demo-liferay

start image with (if you plan to deploy into ref. https://another-software-development-blog.blogspot.de/2016/11/liferay-docker-again.html )

    docker run -d -p 8080:8080 -v ~/deploy-ext:/deploy --name liferay anothersoftwaredevelopmentblog/docker-demo-liferay


see status with

    docker ps -l


see logs with

    docker logs liferay -f


after basic configuration is done you need to restart the image


stop image with

    docker stop liferay

start image with

    docker start liferay


