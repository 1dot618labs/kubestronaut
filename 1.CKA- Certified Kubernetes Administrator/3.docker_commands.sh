bharathkumardasaraju@test-nerdctl$ docker pull nginx
Using default tag: latest
latest: Pulling from library/nginx
aa6fbc30c84e: Pull complete
c28fc33dc48c: Pull complete
08fb08230766: Pull complete
d2983a84b0c4: Pull complete
9f4e03394720: Pull complete
522e88f665e7: Pull complete
d964500c63bd: Pull complete
Digest: sha256:447a8665cc1dab95b1ca778e162215839ccbb9189104c79d7ec3a81e14577add
Status: Downloaded newer image for nginx:latest
docker.io/library/nginx:latest
bharathkumardasaraju@test-nerdctl$ docker pull redis:alpine
alpine: Pulling from library/redis
690e87867337: Pull complete
c8e7080b1466: Pull complete
28ae03b11f2f: Pull complete
28f10c770229: Pull complete
ee95b24061d4: Pull complete
594c1879b871: Pull complete
4f4fb700ef54: Pull complete
41eaa5a9296d: Pull complete
Digest: sha256:eaea8264f74a95ea9a0767c794da50788cbd9cf5223951674d491fa1b3f4f2d2
Status: Downloaded newer image for redis:alpine
docker.io/library/redis:alpine
bharathkumardasaraju@test-nerdctl$ docker run --name bkweb -p 80:80 -d nginx
c9932aae338233a24b08e73b47ff936f3830f1c72c78e874f1da5c3b81d94cbf
bharathkumardasaraju@test-nerdctl$ docker ps
CONTAINER ID   IMAGE                                 COMMAND                  CREATED             STATUS             PORTS                                                                                                                                  NAMES
c9932aae3382   nginx                                 "/docker-entrypoint.…"   16 seconds ago      Up 16 seconds      0.0.0.0:80->80/tcp                                                                                                                     bkweb
b8110e2c6bbd   gcr.io/k8s-minikube/kicbase:v0.0.39   "/usr/local/bin/entr…"   About an hour ago   Up About an hour   127.0.0.1:52283->22/tcp, 127.0.0.1:52284->2376/tcp, 127.0.0.1:52286->5000/tcp, 127.0.0.1:52287->8443/tcp, 127.0.0.1:52285->32443/tcp   minikube
bharathkumardasaraju@test-nerdctl$ docker stop bkweb
bkweb
bharathkumardasaraju@test-nerdctl$