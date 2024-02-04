FROM openjdk:17
EXPOSE 8080
ADD target/docsample.jar docsample.jar
ENTRYPOINT ["java", "-jar", "/docsample.jar"]