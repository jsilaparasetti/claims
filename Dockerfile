FROM openjdk:latest
EXPOSE 8080
ARG claims.API-0.0.1-SNAPSHOT.jar=jenkins.jar
ENTRYPOINT ["java","-jar","claims.API-0.0.1-SNAPSHOT.jar"]

