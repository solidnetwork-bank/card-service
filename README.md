# card-service

# run
````
docker run --rm -it -p 5000:5000 solidnetworkxyz/card-service:0.5
````

# Generate Jar before build
````
./.mvn/mvnw -B package --file pom.xml
````

# build
````
docker build -t "solidnetworkxyz/card-service:0.5" .
````

# push
````
docker push solidnetworkxyz/card-service:0.5
````

# REMEMBER CHANGE VERSION

