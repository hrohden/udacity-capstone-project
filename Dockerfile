FROM openjdk:8
COPY target/udacitycapstone-0.0.1-SNAPSHOT.jar /usr/src
COPY VERSION /
WORKDIR /usr/src
CMD ["java", "-jar", "udacitycapstone-0.0.1-SNAPSHOT.jar"]