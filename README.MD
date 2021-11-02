# Docker-Setup to run [Pluralsight-Spring-Security-Auth-User-app](https://github.com/niilz/spring-user-auth-pluralsight-jpa)

- Launches Spring-Boot application
- Sets up Postgres-Database (data is persisted over container restarts)

## Build image (for example after changes)

docker build . -t **image-name**

## Start Container

docker compose up

Make sure **image-name** is referenced in docker-compose.yml

## Environment Variables

Refer to the content of the docker-compose.yml

## Special feature of the image:

The dependencies are cached as good as possible by using the **build offline** feature of maven.
This reduces the build times because the layers can be cached better by docker.
