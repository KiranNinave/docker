docker-composer up # its eqvivalent to docker run <image-id>

docker-composer up --build # its eqvivalent to docker build . and docker run <image-id>

docker-composer down # its eqvivalent to docker stop <container-id> and remove

docker-composer ps # its eqvivalent to docker ps but only shows the processes executed by docker-composer