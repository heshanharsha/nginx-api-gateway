### Build each REST API services using the following commands

docker compose build api-service1
docker compose build api-service2

### ECR login
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 998125666219.dkr.ecr.us-east-1.amazonaws.com

### docker push
docker push 998125666219.dkr.ecr.us-east-1.amazonaws.com/apigw:api-service1
docker push 998125666219.dkr.ecr.us-east-1.amazonaws.com/apigw:api-service2
