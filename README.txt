### Build each REST API services using the following commands
Open separate 3 terminal, run these commands

docker compose up --build api-service1

(after that we can access api1 from our local machine
http://localhost:5001/
http://localhost:5001/foo)

docker compose up --build api-service2
(after that we can access api2 from our local machine
http://localhost:5002/
http://localhost:5002/bar)

docker compose up --build api-gateway
(after that we can access api1 and api2 through nginx

### service1
http://localhost/api1/
http://localhost/api1/foo

###service2
http://localhost/api2/
http://localhost/api2/bar
)

### build the service1, service2 docker images

docker compose build api-service1
docker compose build api-service2

### retage docker images and push to the container registry
docker tag SOURCE_IMAGE[:TAG] TARGET_IMAGE[:TAG]

docker tag api-service1:latest devopsheshan/api-service1:latest
docker tag api-service2:latest devopsheshan/api-service2:latest

### login to the docker hub
docker login
### login to the other docker registry
docker login <registry>

### push to the docker hub
docker push devopsheshan/api-service1:latest
docker push devopsheshan/api-service2:latest




docker compose build api-gateway
docker tag api-gateway:latest devopsheshan/api-gateway:latest
docker push devopsheshan/api-gateway:latest


service1: 20.241.138.56
service2: 52.191.103.192