bharathkumardasaraju@Downloads$ minikube ssh
Last login: Wed Aug 28 03:43:28 2024 from 192.168.49.1
docker@minikube:~$ sudo us
sudo: us: command not found
docker@minikube:~$ sudo su
root@minikube:/home/docker# cd /var/lib/minikube/certs
root@minikube:/var/lib/minikube/certs# pwd
/var/lib/minikube/certs
root@minikube:/var/lib/minikube/certs# ls -rtlh
total 76K
-rw-r--r-- 1 root root 1.1K Apr 18  2023 ca.crt
-rw------- 1 root root 1.7K Apr 18  2023 ca.key
-rw-r--r-- 1 root root 1.1K Apr 18  2023 proxy-client-ca.crt
-rw------- 1 root root 1.7K Apr 18  2023 proxy-client-ca.key
-rw-r--r-- 1 root root 1.2K Apr 18  2023 proxy-client.crt
-rw------- 1 root root 1.7K Apr 18  2023 proxy-client.key
-rw------- 1 root root 1.7K Apr 18  2023 front-proxy-ca.key
-rw-r--r-- 1 root root 1.1K Apr 18  2023 front-proxy-ca.crt
drwxr-xr-x 2 root root 4.0K Apr 18  2023 etcd
-rw------- 1 root root  451 Apr 18  2023 sa.pub
-rw------- 1 root root 1.7K Apr 18  2023 sa.key
-rw-r--r-- 1 root root 1.4K Aug 27 03:51 apiserver.crt
-rw------- 1 root root 1.7K Aug 27 03:51 apiserver.key
-rw------- 1 root root 1.7K Aug 27 03:51 apiserver-etcd-client.key
-rw-r--r-- 1 root root 1.2K Aug 27 03:51 apiserver-etcd-client.crt
-rw------- 1 root root 1.7K Aug 27 03:51 apiserver-kubelet-client.key
-rw-r--r-- 1 root root 1.2K Aug 27 03:51 apiserver-kubelet-client.crt
-rw------- 1 root root 1.7K Aug 27 03:51 front-proxy-client.key
-rw-r--r-- 1 root root 1.1K Aug 27 03:51 front-proxy-client.crt
root@minikube:/var/lib/minikube/certs# cd etcd
root@minikube:/var/lib/minikube/certs/etcd# ls -lrth
total 32K
-rw------- 1 root root 1.7K Apr 18  2023 ca.key
-rw-r--r-- 1 root root 1.1K Apr 18  2023 ca.crt
-rw------- 1 root root 1.7K Aug 27 03:51 healthcheck-client.key
-rw-r--r-- 1 root root 1.2K Aug 27 03:51 healthcheck-client.crt
-rw------- 1 root root 1.7K Aug 27 03:51 peer.key
-rw-r--r-- 1 root root 1.2K Aug 27 03:51 peer.crt
-rw------- 1 root root 1.7K Aug 27 03:51 server.key
-rw-r--r-- 1 root root 1.2K Aug 27 03:51 server.crt
root@minikube:/var/lib/minikube/certs/etcd#


bharathkumardasaraju@Downloads$ kubectl exec etcd-minikube -n kube-system -- etcdctl --endpoints https://192.168.49.2:2379 --cacert /var/lib/minikube/certs/etcd/ca.crt --cert /var/lib/minikube/certs/etcd/server.crt --key /var/lib/minikube/certs/etcd/server.key get bharath
bharath
kubestronaut
bharathkumardasaraju@Downloads$


kubectl exec etcd-minikube -n kube-system -- etcdctl --endpoints https://192.168.49.2:2379 \
     --cacert /var/lib/minikube/certs/etcd/ca.crt \
     --cert /var/lib/minikube/certs/etcd/server.crt \
     --key /var/lib/minikube/certs/etcd/server.key \
     get bharath

