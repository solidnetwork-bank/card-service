FROM amazoncorretto:21

WORKDIR /workspace/app

COPY .mvn .mvn
COPY pom.xml .
COPY src src

RUN ./.mvn/mvnw -B package --file pom.xml -DskipTests

EXPOSE 5000

ENTRYPOINT ["sh", "-c", "java -jar target/card-service.jar"]
