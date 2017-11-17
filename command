apiVersion: v1
kind: DeploymentConfig
metadata:
  creationTimestamp: null
  generation: 1
  labels:
    run: etcd237
  name: etcd237
spec:
  replicas: 1
  selector:
    run: etcd237
  strategy:
    activeDeadlineSeconds: 21600
    resources: {}
    rollingParams:
      intervalSeconds: 1
      maxSurge: 25%
      maxUnavailable: 25%
      timeoutSeconds: 600
      updatePeriodSeconds: 1
    type: Rolling
  template:
    metadata:
      creationTimestamp: null
      labels:
        run: etcd237
    spec:
      containers:
      - command:
        - /etcd
        - -listen-client-urls
        - http://0.0.0.0:2379
        - -advertise-client-urls
        - http://172.25.3.225:2379
        image: etcd:v2.3.7
        imagePullPolicy: IfNotPresent
        name: etcd237
        resources: {}
        terminationMessagePath: /dev/termination-log
        terminationMessagePolicy: File
      dnsPolicy: ClusterFirst
      restartPolicy: Always
      schedulerName: default-scheduler
      securityContext: {}
      terminationGracePeriodSeconds: 30
  test: false
  triggers:
  - type: ConfigChange
status:
  availableReplicas: 0
  latestVersion: 0
  observedGeneration: 0
  replicas: 0
  unavailableReplicas: 0
  updatedReplicas: 0
