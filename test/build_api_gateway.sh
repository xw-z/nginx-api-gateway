

docker build -t nginx-api-geteway ../.
docker rm -f api-geteway
docker run -d --name api-geteway -p 8888:80 \
    -v /var/run/docker.sock:/var/run/docker.sock:ro \
    nginx-api-geteway
