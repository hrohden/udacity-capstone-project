FROM openjdk:8
COPY target/udacitycapstone-2.0.0.jar /usr/src
COPY VERSION /
WORKDIR /usr/src
CMD ["java", "-jar", "udacitycapstone-2.0.0.jar"]