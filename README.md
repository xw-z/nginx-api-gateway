### Nginx-Api-Gateway API网关服务

目前仅支持http接口

```
docker run -d --name api-geteway -p 8888:80 \
    -v /var/run/docker.sock:/var/run/docker.sock:ro \
    xwzhou/nginx-api-geteway
```


```

docker run -d  --name api-node-01 \
    -e API_NODE_NAME="node_01" -e API_NODE_PORT=80 \
    nginx


docker run -d  --name api-node-02 \
    -e API_NODE_NAME="node_02" -e API_NODE_PORT=80 \
    nginx

```


```
http://localhost:8888/node_01/index.html   =>   http://<node_0X_server>/index.html

```

