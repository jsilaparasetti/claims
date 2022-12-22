FROM openjdk:latest
EXPOSE 8080
ARG claims.API-0.0.1-SNAPSHOT.jar=jenkins.jar
ADD /target/claims.API-0.0.1-SNAPSHOT.jar claims.API-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","claims.API-0.0.1-SNAPSHOT.jar"]

