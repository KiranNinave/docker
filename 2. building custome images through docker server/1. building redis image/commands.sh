# building an image
docker build -t kiranninave/redis:latest .

# creating and running as container
docker run <image_id>

# optional we can again create image from an running container using
docker commit -c 'CMD ["redis-server"]' <container_id>
