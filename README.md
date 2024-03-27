# 
./mvnw clean package

java -jar target/service-0.0.*-SNAPSHOT.jar

nohup java -jar service-0.0.2-SNAPSHOT.jar > output.log &

tail -f output.log