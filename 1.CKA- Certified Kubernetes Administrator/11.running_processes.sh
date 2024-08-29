#### =================================================== Master ===================================================

root@minikube:/var/lib# docker ps | grep -i etcd
0df3ec317ea2   ef2458028240                "etcd --advertise-cl…"   2 hours ago   Up 2 hours             k8s_etcd_etcd-minikube_kube-system_a121e106627e5c6efa9ba48006cc43bf_10
49a914a2b77d   registry.k8s.io/pause:3.9   "/pause"                 2 hours ago   Up 2 hours             k8s_POD_etcd-minikube_kube-system_a121e106627e5c6efa9ba48006cc43bf_10
root@minikube:/var/lib#

root@minikube:/var/lib# ps -aux | grep -i etcd
root      319264  2.3  0.7 11214144 71956 ?      Ssl  03:07   2:19 etcd --advertise-client-urls=https://192.168.49.2:2379 --cert-file=/var/lib/minikube/certs/etcd/server.crt --client-cert-auth=true --data-dir=/var/lib/minikube/etcd --experimental-initial-corrupt-check=true --experimental-watch-progress-notify-interval=5s --initial-advertise-peer-urls=https://192.168.49.2:2380 --initial-cluster=minikube=https://192.168.49.2:2380 --key-file=/var/lib/minikube/certs/etcd/server.key --listen-client-urls=https://127.0.0.1:2379,https://192.168.49.2:2379 --listen-metrics-urls=http://127.0.0.1:2381 --listen-peer-urls=https://192.168.49.2:2380 --name=minikube --peer-cert-file=/var/lib/minikube/certs/etcd/peer.crt --peer-client-cert-auth=true --peer-key-file=/var/lib/minikube/certs/etcd/peer.key --peer-trusted-ca-file=/var/lib/minikube/certs/etcd/ca.crt --proxy-refresh-interval=70000 --snapshot-count=10000 --trusted-ca-file=/var/lib/minikube/certs/etcd/ca.crt
root      410145  0.0  0.0   2844  1408 pts/1    S+   04:46   0:00 grep --color=auto -i etcd
root@minikube:/var/lib#



root@minikube:/var/lib# ps -aux | grep -i apiserver
root      319770  4.3  3.1 1113792 321720 ?      Ssl  03:07   2:16 kube-apiserver --advertise-address=192.168.49.2 --allow-privileged=true --authorization-mode=Node,RBAC --client-ca-file=/var/lib/minikube/certs/ca.crt --enable-admission-plugins=NamespaceLifecycle,LimitRanger,ServiceAccount,DefaultStorageClass,DefaultTolerationSeconds,NodeRestriction,MutatingAdmissionWebhook,ValidatingAdmissionWebhook,ResourceQuota --enable-bootstrap-token-auth=true --etcd-cafile=/var/lib/minikube/certs/etcd/ca.crt --etcd-certfile=/var/lib/minikube/certs/apiserver-etcd-client.crt --etcd-keyfile=/var/lib/minikube/certs/apiserver-etcd-client.key --etcd-servers=https://127.0.0.1:2379 --kubelet-client-certificate=/var/lib/minikube/certs/apiserver-kubelet-client.crt --kubelet-client-key=/var/lib/minikube/certs/apiserver-kubelet-client.key --kubelet-preferred-address-types=InternalIP,ExternalIP,Hostname --proxy-client-cert-file=/var/lib/minikube/certs/front-proxy-client.crt --proxy-client-key-file=/var/lib/minikube/certs/front-proxy-client.key --requestheader-allowed-names=front-proxy-client --requestheader-client-ca-file=/var/lib/minikube/certs/front-proxy-ca.crt --requestheader-extra-headers-prefix=X-Remote-Extra- --requestheader-group-headers=X-Remote-Group --requestheader-username-headers=X-Remote-User --secure-port=8443 --service-account-issuer=https://kubernetes.default.svc.cluster.local --service-account-key-file=/var/lib/minikube/certs/sa.pub --service-account-signing-key-file=/var/lib/minikube/certs/sa.key --service-cluster-ip-range=10.96.0.0/12 --tls-cert-file=/var/lib/minikube/certs/apiserver.crt --tls-private-key-file=/var/lib/minikube/certs/apiserver.key
root      368481  0.0  0.0   2844  1280 pts/1    S+   04:00   0:00 grep --color=auto -i apiserver
root@minikube:/var/lib#

root@minikube:/var/lib# docker ps | grep -i apiserver
9885a886d9d3   3f1ae10c5c85                "kube-apiserver --ad…"   53 minutes ago   Up 53 minutes             k8s_kube-apiserver_kube-apiserver-minikube_kube-system_cdcbce216c62c4407ac9a51ac013e7d7_11
1aa10325a8d6   registry.k8s.io/pause:3.9   "/pause"                 54 minutes ago   Up 54 minutes             k8s_POD_kube-apiserver-minikube_kube-system_cdcbce216c62c4407ac9a51ac013e7d7_10
root@minikube:/var/lib#



root@minikube:/var/lib# ps -aux | grep -i kube-controller-manager
root      319839  1.2  1.1 828004 112396 ?       Ssl  03:07   1:00 kube-controller-manager --allocate-node-cidrs=true --authentication-kubeconfig=/etc/kubernetes/controller-manager.conf --authorization-kubeconfig=/etc/kubernetes/controller-manager.conf --bind-address=127.0.0.1 --client-ca-file=/var/lib/minikube/certs/ca.crt --cluster-cidr=10.244.0.0/16 --cluster-name=mk --cluster-signing-cert-file=/var/lib/minikube/certs/ca.crt --cluster-signing-key-file=/var/lib/minikube/certs/ca.key --controllers=*,bootstrapsigner,tokencleaner --kubeconfig=/etc/kubernetes/controller-manager.conf --leader-elect=false --requestheader-client-ca-file=/var/lib/minikube/certs/front-proxy-ca.crt --root-ca-file=/var/lib/minikube/certs/ca.crt --service-account-private-key-file=/var/lib/minikube/certs/sa.key --service-cluster-ip-range=10.96.0.0/12 --use-service-account-credentials=true
root      394707  0.0  0.0   2844  1408 pts/1    S+   04:29   0:00 grep --color=auto -i kube-controller-manager
root@minikube:/var/lib#

root@minikube:/var/lib# docker ps | grep -i kube-controller-manager
e758184766df   3b6ac91ff8d3                "kube-controller-man…"   About an hour ago   Up About an hour             k8s_kube-controller-manager_kube-controller-manager-minikube_kube-system_466b9e73e627277a8c24637c2fa6442d_12
1cdae8d9d428   registry.k8s.io/pause:3.9   "/pause"                 About an hour ago   Up About an hour             k8s_POD_kube-controller-manager-minikube_kube-system_466b9e73e627277a8c24637c2fa6442d_10
root@minikube:/var/lib#


root@minikube:/var/lib# docker ps | grep -i kube-scheduler
2e8eff685fe2   fa167119f9a5                "kube-scheduler --au…"   2 hours ago   Up 2 hours             k8s_kube-scheduler_kube-scheduler-minikube_kube-system_0818f4b1a57de9c3f9c82667e7fcc870_10
acbe567bf2ea   registry.k8s.io/pause:3.9   "/pause"                 2 hours ago   Up 2 hours             k8s_POD_kube-scheduler-minikube_kube-system_0818f4b1a57de9c3f9c82667e7fcc870_10
root@minikube:/var/lib#

root@minikube:/var/lib# ps -aux | grep -i kube-scheduler
root      318808  0.2  0.5 764708 60864 ?        Ssl  03:07   0:17 kube-scheduler --authentication-kubeconfig=/etc/kubernetes/scheduler.conf --authorization-kubeconfig=/etc/kubernetes/scheduler.conf --bind-address=127.0.0.1 --kubeconfig=/etc/kubernetes/scheduler.conf --leader-elect=false
root      407607  0.0  0.0   2976  1536 pts/1    S+   04:43   0:00 grep --color=auto -i kube-scheduler
root@minikube:/var/lib#




#### =================================================== Node ===================================================

root@minikube:/home/docker# ps -aux | grep -i "kubelet "
root        1775  2.1  1.1 1938428 121944 ?      Ssl  Aug28   9:32 /var/lib/minikube/binaries/v1.26.3/kubelet --bootstrap-kubeconfig=/etc/kubernetes/bootstrap-kubelet.conf --config=/var/lib/kubelet/config.yaml --container-runtime-endpoint=unix:///var/run/cri-dockerd.sock --hostname-override=minikube --kubeconfig=/etc/kubernetes/kubelet.conf --node-ip=192.168.49.2
root      416002  0.0  0.0   2976  1664 pts/1    S+   04:52   0:00 grep --color=auto -i kubelet
root@minikube:/home/docker#


root@minikube:/home/docker# docker ps | grep -i kubelet
root@minikube:/home/docker#


