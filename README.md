# card-service


# Generate Jar before build
````
./.mvn/mvnw -B package --file pom.xml
````

# build
````
docker build -t "solidnetworkxyz/card-service:0.7" .
````

# run
````
docker run --rm -it -p 80:80 solidnetworkxyz/card-service:0.7
````
# login
````
docker login -u solidnetworkxyz
````

# push
````
docker push solidnetworkxyz/card-service:0.7
````

# REMEMBER CHANGE VERSION
- pom.xml
- docker build -t
