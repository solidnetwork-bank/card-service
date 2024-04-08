FROM amazoncorretto:21

WORKDIR /workspace/app

COPY .mvn .
COPY pom.xml .
COPY src src

RUN ./.mvn/mvnw install -DskipTests

COPY target/*.jar app.jar

EXPOSE 5000

ENTRYPOINT ["sh", "-c", "java -jar /app.jar"]
