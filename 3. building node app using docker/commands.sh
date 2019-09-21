# building an image
docker build -t kiranninave/redis:latest .

# creating and running as container with port mapping
docker run -p <machine_port>:<container_port> <image_id>

