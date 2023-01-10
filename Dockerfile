FROM openjdk:11
EXPOSE 9000
VOLUME /tmp
ARG claims-0.0.1-SNAPSHOT.jar facility-docker.jar
ENTRYPOINT ["java", "-jar", "facility-docker.jar"]
