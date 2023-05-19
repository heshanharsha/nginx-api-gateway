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
