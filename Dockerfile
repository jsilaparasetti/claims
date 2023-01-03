FROM openjdk:11
EXPOSE 9000
VOLUME /tmp
ARG claims-0.0.1-SNAPSHOT.jar claims-docker.jar
ENTRYPOINT ["java", "-jar", "claims-docker.jar"]
