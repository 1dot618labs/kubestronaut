bharathkumardasaraju@1.CKA- Certified Kubernetes Administrator$ vim 15.sample_pod.yaml
bharathkumardasaraju@1.CKA- Certified Kubernetes Administrator$ kubectl apply -f 15.sample_pod.yaml
pod/bkapp created
bharathkumardasaraju@1.CKA- Certified Kubernetes Administrator$ cd ..
bharathkumardasaraju@kubestronaut$ git add .
bharathkumardasaraju@kubestronaut$


bharathkumardasaraju@kubestronaut$ kubectl get pods -o wide
NAME    READY   STATUS    RESTARTS   AGE     IP            NODE       NOMINATED NODE   READINESS GATES
bkapp   1/1     Running   0          4m44s   10.244.0.21   minikube   <none>           <none>
bharathkumardasaraju@kubestronaut$



bharathkumardasaraju@kubestronaut$ kubectl get pods bkapp -o yaml
apiVersion: v1
kind: Pod
metadata:
  annotations:
    kubectl.kubernetes.io/last-applied-configuration: |
      {"apiVersion":"v1","kind":"Pod","metadata":{"annotations":{},"labels":{"app":"bkapp-frontend","env":"development","type":"nginx-frontend"},"name":"bkapp","namespace":"default"},"spec":{"containers":[{"image":"nginx","name":"bkweb"}]}}
  creationTimestamp: "2024-09-02T03:42:21Z"
  labels:
    app: bkapp-frontend
    env: development
    type: nginx-frontend
  name: bkapp
  namespace: default
  resourceVersion: "469039"
  uid: dd3b2e72-7672-4573-875e-10ea5bdad5d9
spec:
  containers:
  - image: nginx
    imagePullPolicy: Always
    name: bkweb
    resources: {}
    terminationMessagePath: /dev/termination-log
    terminationMessagePolicy: File
    volumeMounts:
    - mountPath: /var/run/secrets/kubernetes.io/serviceaccount
      name: kube-api-access-g6p8q
      readOnly: true
  dnsPolicy: ClusterFirst
  enableServiceLinks: true
  nodeName: minikube
  preemptionPolicy: PreemptLowerPriority
  priority: 0
  restartPolicy: Always
  schedulerName: default-scheduler
  securityContext: {}
  serviceAccount: default
  serviceAccountName: default
  terminationGracePeriodSeconds: 30
  tolerations:
  - effect: NoExecute
    key: node.kubernetes.io/not-ready
    operator: Exists
    tolerationSeconds: 300
  - effect: NoExecute
    key: node.kubernetes.io/unreachable
    operator: Exists
    tolerationSeconds: 300
  volumes:
  - name: kube-api-access-g6p8q
    projected:
      defaultMode: 420
      sources:
      - serviceAccountToken:
          expirationSeconds: 3607
          path: token
      - configMap:
          items:
          - key: ca.crt
            path: ca.crt
          name: kube-root-ca.crt
      - downwardAPI:
          items:
          - fieldRef:
              apiVersion: v1
              fieldPath: metadata.namespace
            path: namespace
status:
  conditions:
  - lastProbeTime: null
    lastTransitionTime: "2024-09-02T03:42:21Z"
    status: "True"
    type: Initialized
  - lastProbeTime: null
    lastTransitionTime: "2024-09-02T03:42:26Z"
    status: "True"
    type: Ready
  - lastProbeTime: null
    lastTransitionTime: "2024-09-02T03:42:26Z"
    status: "True"
    type: ContainersReady
  - lastProbeTime: null
    lastTransitionTime: "2024-09-02T03:42:21Z"
    status: "True"
    type: PodScheduled
  containerStatuses:
  - containerID: docker://de70ef5da55e6dacdf83ca3a278c524a18823084cf01a3b7afebafdfee514ce0
    image: nginx:latest
    imageID: docker-pullable://nginx@sha256:447a8665cc1dab95b1ca778e162215839ccbb9189104c79d7ec3a81e14577add
    lastState: {}
    name: bkweb
    ready: true
    restartCount: 0
    started: true
    state:
      running:
        startedAt: "2024-09-02T03:42:25Z"
  hostIP: 192.168.49.2
  phase: Running
  podIP: 10.244.0.21
  podIPs:
  - ip: 10.244.0.21
  qosClass: BestEffort
  startTime: "2024-09-02T03:42:21Z"
bharathkumardasaraju@kubestronaut$

