# docker-demo-liferay

sample from my blog https://another-software-development-blog.blogspot.de


start image with

    docker run -d -p 8080:8080 --name liferay anothersoftwaredevelopmentblog/docker-demo-liferay


see status with

    docker ps -l


see logs with 

    docker logs liferay -f


stop image with 

    docker stop liferay


