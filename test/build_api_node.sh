
docker run -d  --name api-node-01 \
    -e API_NODE_NAME="node_01" -e API_NODE_PORT=80 \
    nginx


docker run -d  --name api-node-02 \
    -e API_NODE_NAME="node_02" -e API_NODE_PORT=80 \
    nginx


docker run -d  --name api-node-03 \
    -e API_NODE_NAME="node_03" -e API_NODE_PORT=80 \
    nginx


    