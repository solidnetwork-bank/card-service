# card-service


# Generate Jar before build
````
./.mvn/mvnw -B package --file pom.xml
````

# build
````
docker build -t "solidnetworkxyz/card-service:0.8" .
````

# run
````
docker run --rm -it -p 80:80 solidnetworkxyz/card-service:0.8
````
# login
````
docker login -u solidnetworkxyz
````

# push
````
docker push solidnetworkxyz/card-service:0.8
````

# REMEMBER CHANGE VERSION
- pom.xml
- docker build -t
