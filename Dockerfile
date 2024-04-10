FROM amazoncorretto:21

WORKDIR /workspace/app

COPY target/*.jar app.jar

EXPOSE 5000

ENTRYPOINT ["sh", "-c", "java -jar app.jar"]
