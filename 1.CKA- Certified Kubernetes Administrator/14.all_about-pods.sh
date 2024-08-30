bharathkumardasaraju@Downloads$ kubectl run nginx
error: required flag(s) "image" not set
bharathkumardasaraju@Downloads$

bharathkumardasaraju@Downloads$ kubectl run nginx --image=nginx
pod/nginx created
bharathkumardasaraju@Downloads$


bharathkumardasaraju@~$ kubectl get pods -o wide
NAME    READY   STATUS    RESTARTS   AGE     IP            NODE       NOMINATED NODE   READINESS GATES
nginx   1/1     Running   0          6m16s   10.244.0.17   minikube   <none>           <none>
bharathkumardasaraju@~$

bharathkumardasaraju@~$ kubectl get pods -o wide -n default
NAME    READY   STATUS    RESTARTS   AGE     IP            NODE       NOMINATED NODE   READINESS GATES
nginx   1/1     Running   0          6m27s   10.244.0.17   minikube   <none>           <none>
bharathkumardasaraju@~$


bharathkumardasaraju@Downloads$ kubectl port-forward pod/nginx 8888:80
Forwarding from 127.0.0.1:8888 -> 80
Forwarding from [::1]:8888 -> 80
Handling connection for 8888
Handling connection for 8888
Handling connection for 8888
...
...
bharathkumardasaraju@Downloads$


bharathkumardasaraju@~$ curl localhost:8888
<!DOCTYPE html>
<html>
<head>
<title>Welcome to nginx!</title>
<style>
html { color-scheme: light dark; }
body { width: 35em; margin: 0 auto;
font-family: Tahoma, Verdana, Arial, sans-serif; }
</style>
</head>
<body>
<h1>Welcome to nginx!</h1>
<p>If you see this page, the nginx web server is successfully installed and
working. Further configuration is required.</p>

<p>For online documentation and support please refer to
<a href="http://nginx.org/">nginx.org</a>.<br/>
Commercial support is available at
<a href="http://nginx.com/">nginx.com</a>.</p>

<p><em>Thank you for using nginx.</em></p>
</body>
</html>
bharathkumardasaraju@~$




bharathkumardasaraju@~$ curl -v -H "Accept: text/html" localhost:8888
*   Trying [::1]:8888...
* Connected to localhost (::1) port 8888
> GET / HTTP/1.1
> Host: localhost:8888
> User-Agent: curl/8.4.0
> Accept: text/html
>
< HTTP/1.1 200 OK
< Server: nginx/1.27.1
< Date: Fri, 30 Aug 2024 00:48:08 GMT
< Content-Type: text/html
< Content-Length: 615
< Last-Modified: Mon, 12 Aug 2024 14:21:01 GMT
< Connection: keep-alive
< ETag: \"66ba1a4d-267\"
< Accept-Ranges: bytes
<
<!DOCTYPE html>
<html>
<head>
<title>Welcome to nginx!</title>
<style>
html { color-scheme: light dark; }
body { width: 35em; margin: 0 auto;
font-family: Tahoma, Verdana, Arial, sans-serif; }
</style>
</head>
<body>
<h1>Welcome to nginx!</h1>
<p>If you see this page, the nginx web server is successfully installed and
working. Further configuration is required.</p>

<p>For online documentation and support please refer to
<a href="http://nginx.org/">nginx.org</a>.<br/>
Commercial support is available at
<a href="http://nginx.com/">nginx.com</a>.</p>

<p><em>Thank you for using nginx.</em></p>
</body>
</html>
* Connection #0 to host localhost left intact
bharathkumardasaraju@~$


We can also access the nginx pod using its internal IP from the node like below.

bharathkumardasaraju@Downloads$ kubectl get pods -o wide -n default
NAME    READY   STATUS    RESTARTS   AGE   IP            NODE       NOMINATED NODE   READINESS GATES
nginx   1/1     Running   0          18m   10.244.0.17   minikube   <none>           <none>
bharathkumardasaraju@Downloads$


bharathkumardasaraju@Downloads$ minikube ssh
Last login: Fri Aug 30 00:56:38 2024 from 192.168.49.1
docker@minikube:~$ curl 10.244.0.17
<!DOCTYPE html>
<html>
<head>
<title>Welcome to nginx!</title>
<style>
html { color-scheme: light dark; }
body { width: 35em; margin: 0 auto;
font-family: Tahoma, Verdana, Arial, sans-serif; }
</style>
</head>
<body>
<h1>Welcome to nginx!</h1>
<p>If you see this page, the nginx web server is successfully installed and
working. Further configuration is required.</p>

<p>For online documentation and support please refer to
<a href="http://nginx.org/">nginx.org</a>.<br/>
Commercial support is available at
<a href="http://nginx.com/">nginx.com</a>.</p>

<p><em>Thank you for using nginx.</em></p>
</body>
</html>
docker@minikube:~$