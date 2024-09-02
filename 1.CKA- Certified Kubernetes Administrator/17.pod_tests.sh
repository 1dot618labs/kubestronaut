controlplane ~ ➜  cat sample.yaml
apiVersion: v1
kind: Pod
metadata:
  name: redis
  labels:
    app: redis
    type: cache
spec:
  containers:
    - name: redis
      image: redis

controlplane ~ ➜  kubectl get pods -A
NAMESPACE     NAME                                      READY   STATUS      RESTARTS   AGE
kube-system   local-path-provisioner-75bb9ff978-mt5dw   1/1     Running     0          25m
kube-system   coredns-576bfc4dc7-cc9vj                  1/1     Running     0          25m
kube-system   helm-install-traefik-crd-x6fsv            0/1     Completed   0          25m
kube-system   metrics-server-557ff575fb-z86x5           1/1     Running     0          25m
kube-system   svclb-traefik-d08f6803-nrk5t              2/2     Running     0          24m
kube-system   helm-install-traefik-28jcj                0/1     Completed   2          25m
kube-system   traefik-5fb479b77-zgxvq                   1/1     Running     0          24m
default       newpods-hdxxn                             1/1     Running     0          8m41s
default       newpods-n49lg                             1/1     Running     0          8m41s
default       newpods-n8xdb                             1/1     Running     0          8m41s
default       nginx                                     1/1     Running     0          8m18s
default       redis                                     1/1     Running     0          94s

controlplane ~ ➜


bharathkumardasaraju@1.CKA- Certified Kubernetes Administrator$ kubectl run redis --image redis --dry-run=client -o yaml
apiVersion: v1
kind: Pod
metadata:
  creationTimestamp: null
  labels:
    run: redis
  name: redis
spec:
  containers:
  - image: redis
    name: redis
    resources: {}
  dnsPolicy: ClusterFirst
  restartPolicy: Always
status: {}
bharathkumardasaraju@1.CKA- Certified Kubernetes Administrator$


bharathkumardasaraju@1.CKA- Certified Kubernetes Administrator$ kubectl run redis --image redis --dry-run=client -o yaml > 18.redis_sample.yaml

bharathkumardasaraju@1.CKA- Certified Kubernetes Administrator$

bharathkumardasaraju@1.CKA- Certified Kubernetes Administrator$ kubectl apply -f 18.redis_sample.yaml
pod/redis created
bharathkumardasaraju@1.CKA- Certified Kubernetes Administrator$

bharathkumardasaraju@1.CKA- Certified Kubernetes Administrator$ kubectl get pods -o wide -n default
NAME    READY   STATUS    RESTARTS   AGE   IP            NODE       NOMINATED NODE   READINESS GATES
bkapp   1/1     Running   0          42m   10.244.0.21   minikube   <none>           <none>
redis   1/1     Running   0          39s   10.244.0.22   minikube   <none>           <none>
bharathkumardasaraju@1.CKA- Certified Kubernetes Administrator$


