#!/bin/bash
# remove old containers if they exist
docker rm -f app1 app2 app3 2>/dev/null

# run 3 containers on different ports
docker run -d --name app1 -p 8081:80 nginx
docker run -d --name app2 -p 8082:80 nginx
docker run -d --name app3 -p 8083:80 nginx

echo "3 app containers running on ports 8081, 8082, 8083"
