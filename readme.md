
# Command Docker

## List Image 
```
docker images
```

## Get Image From Docker Hub
```
docker pull mongo:4.1
```

## List Container
```
docker container ls --all
```

## Create Container
```
docker container create --name mongoserver -p {number_port_public}:{number_port_internal} {image}:{tag}

docker container create --name mongoserver -p 8080:27017 mongo:4.1
```

## Start Container 
```
docker container start {name_container}
docker container start mongoserver1
```

## Remove Docker Container
```stop container
docker container stop zaenal
docker container rm zaenal
```

## Remove Docker Image
```
docker image rm mongo:4.1
```

## use environment variable and create container
```
docker container create --name mongo_container -p 8080:27017 -e NAME=mongo -e HOST=localhost mongo:4.1 

docker container inspect rabbitmq
```

## integration between container || ex : 2 databases
```
docker container create --name mongo_container -p 27017:27017 mongo:4.1

docker container create --name redis_container -p 6379:6379 mongo:4.1

docker container create --name golang_container p 3000:3000 -e NAME=GOLANG_APP -e MONGO_HOST=localhost -e MONGO_PORT=27017
-e REDIS_HOST=localhost -e REDIS_PORT=6379
mongo:4.1

docker network create golang-network 
docker network ls

docker network connect golang_network mongo_container
docker network connect golang_network redis_container
docker network connect golang_network golang_container
```
## make docker volume
```
docker volume create mongo_data
docker container create --name mongo p 8080:27017 -v mongo_data:/data/db mongo:4.1 
```

## save to computer storage
```
docker container create --name mongo p 8080:27017 -v /Users/zaenal/mongo:/data/db mongo:4.1
```

## command get in container
```
docker exec -t -i redis_container /bin/bash
type redis-cli
redis-cli
```

## command for delete trash 
```
docker system df
docker system prune
```