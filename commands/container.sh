# creating running container from an image
docker run <image_name>
docker run hello-world

# creating running container from an image and overiding default image command
docker run <image_name> <command>
docker run busybox echo overided default command

# list running process 
docker ps

# list running process with all containers
docker ps --all

# conatainer lifecycle
docker run <image_name> = docker create <image_name> + docker start -a <continer_id>

## creating container from an image
docker create <image_name>
docker create hello-world # this command will return and conatiner id

## starting container
docker start <container_id>
docker start 354874574455745 # this command will start the container but not watch for an output

## starting the container and watch for an output
docker start -a 354874574455745 # this command will start the container and watch for output

## view container log output
docker logs <container_id> # this command is usefull if we forgot to include -a flag on docker start command

## stoping the container
docker stop <container_id> # this will send stop signal to container and after 10 sec send kill signal
docker kill <container_id> # this will send kill signal to container

## interaction with container by passing multiple commands
docker exec -it <container_id> <command>

## interaction with container shell
docker exec -it <container_id> sh #(or bash)

## interaction with container at start
docker run -it <image_name> sh # or bash

## deleting all containers
$ docker system prune