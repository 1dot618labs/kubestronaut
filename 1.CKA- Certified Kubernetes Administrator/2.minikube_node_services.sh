root@minikube:/home/docker# systemctl list-units --type=service --state=active
  UNIT                               LOAD   ACTIVE SUB     DESCRIPTION
  containerd.service                 loaded active running containerd container runtime
  cri-docker.service                 loaded active running CRI Interface for Docker Application Container Engine
  dbus.service                       loaded active running D-Bus System Message Bus
  docker.service                     loaded active running Docker Application Container Engine
  kubelet.service                    loaded active running kubelet: The Kubernetes Node Agent
  minikube-automount.service         loaded active exited  minikube automount
  ssh.service                        loaded active running OpenBSD Secure Shell server
  systemd-journal-flush.service      loaded active exited  Flush Journal to Persistent Storage
  systemd-journald.service           loaded active running Journal Service
  systemd-remount-fs.service         loaded active exited  Remount Root and Kernel File Systems
  systemd-sysctl.service             loaded active exited  Apply Kernel Variables
  systemd-sysusers.service           loaded active exited  Create System Users
  systemd-tmpfiles-setup-dev.service loaded active exited  Create Static Device Nodes in /dev
  systemd-update-utmp.service        loaded active exited  Update UTMP about System Boot/Shutdown

LOAD   = Reflects whether the unit definition was properly loaded.
ACTIVE = The high-level unit activation state, i.e. generalization of SUB.
SUB    = The low-level unit activation state, values depend on unit type.

14 loaded units listed.
root@minikube:/home/docker#



root@minikube:/home/docker# docker ps
CONTAINER ID   IMAGE                       COMMAND                  CREATED          STATUS          PORTS     NAMES
0bdb1b8c85a5   ba04bb24b957                "/storage-provisioner"   25 minutes ago   Up 25 minutes             k8s_storage-provisioner_storage-provisioner_kube-system_aec499bb-ca02-4844-a822-7b9175353ac2_23
f77214cfa41c   b19406328e70                "/coredns -conf /etc…"   26 minutes ago   Up 26 minutes             k8s_coredns_coredns-787d4945fb-r9tcg_kube-system_1da58d71-6788-481a-b8e3-a1ff8abb0f19_8
ef29f53becf6   registry.k8s.io/pause:3.9   "/pause"                 26 minutes ago   Up 26 minutes             k8s_POD_coredns-787d4945fb-r9tcg_kube-system_1da58d71-6788-481a-b8e3-a1ff8abb0f19_8
110732e10d48   c859f97be11a                "/usr/local/bin/kube…"   26 minutes ago   Up 26 minutes             k8s_kube-proxy_kube-proxy-bg7b4_kube-system_957e448e-8b5f-4ec6-9e7a-ebe073eafe69_7
949e12045014   registry.k8s.io/pause:3.9   "/pause"                 26 minutes ago   Up 26 minutes             k8s_POD_kube-proxy-bg7b4_kube-system_957e448e-8b5f-4ec6-9e7a-ebe073eafe69_7
2421119f06ab   registry.k8s.io/pause:3.9   "/pause"                 26 minutes ago   Up 26 minutes             k8s_POD_storage-provisioner_kube-system_aec499bb-ca02-4844-a822-7b9175353ac2_7
62b0548a615c   fa167119f9a5                "kube-scheduler --au…"   26 minutes ago   Up 26 minutes             k8s_kube-scheduler_kube-scheduler-minikube_kube-system_0818f4b1a57de9c3f9c82667e7fcc870_7
31c88e69faaf   3f1ae10c5c85                "kube-apiserver --ad…"   26 minutes ago   Up 26 minutes             k8s_kube-apiserver_kube-apiserver-minikube_kube-system_cdcbce216c62c4407ac9a51ac013e7d7_7
d987485ffe4b   3b6ac91ff8d3                "kube-controller-man…"   26 minutes ago   Up 26 minutes             k8s_kube-controller-manager_kube-controller-manager-minikube_kube-system_466b9e73e627277a8c24637c2fa6442d_7
81adba36aaca   ef2458028240                "etcd --advertise-cl…"   26 minutes ago   Up 26 minutes             k8s_etcd_etcd-minikube_kube-system_a121e106627e5c6efa9ba48006cc43bf_7
a18b0e0c298e   registry.k8s.io/pause:3.9   "/pause"                 26 minutes ago   Up 26 minutes             k8s_POD_kube-scheduler-minikube_kube-system_0818f4b1a57de9c3f9c82667e7fcc870_7
466a7bdc0662   registry.k8s.io/pause:3.9   "/pause"                 26 minutes ago   Up 26 minutes             k8s_POD_etcd-minikube_kube-system_a121e106627e5c6efa9ba48006cc43bf_7
e1d7d70815e9   registry.k8s.io/pause:3.9   "/pause"                 26 minutes ago   Up 26 minutes             k8s_POD_kube-controller-manager-minikube_kube-system_466b9e73e627277a8c24637c2fa6442d_7
4b945db889c6   registry.k8s.io/pause:3.9   "/pause"                 26 minutes ago   Up 26 minutes             k8s_POD_kube-apiserver-minikube_kube-system_cdcbce216c62c4407ac9a51ac013e7d7_7
root@minikube:/home/docker#