docker build -f Dockerfile.dev . # -f specify custom docker file

docker run -p 3000:3000 7ad21ff5facb # for running project

# running container with volume

docker run -p 3000:3000 -v /app/node_modules -v $(pwd):/app 7ad21ff5facb 

# for running test
docker run -it 7ad21ff5facb npm run test

# for live reload with test
# first run image with docker-compose up find running container id with docker ps then execute
docker exec -it <container_id> npm run test

# docker attach allow us to pass commands to containers processes and takes output
docker attach <container_id>

# nginx production build
docker run -p 8080:80 <image_id>