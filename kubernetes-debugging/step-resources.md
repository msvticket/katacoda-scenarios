

<pre class="file" data-filename="nginx-resource.yaml" data-target="replace">apiVersion: apps/v1
kind: Deployment
metadata:
  name: nginx-resource
spec:
  selector:
    matchLabels:
      app: nginx
  replicas: 1
  template:
    metadata:
      labels:
        app: nginx
    spec:
      containers:
      - name: nginx
        image: nginx
        resources:
          limits:
            memory: "10Gi"
            cpu: "500m"
          requests:
            memory: "4Gi"
        ports:
        - containerPort: 80
</pre>


`
kubectl apply -f nginx-resource.yaml
`{{execute}}

So, how did this go. As in the previous step check the name of the pod with `kubectl get pods`{{execute}} and the details with `kubectl describe pod`.

What is happening?

What is the problem?

Can you fix it?

More information: https://kubernetes.io/docs/tasks/debug-application-cluster/debug-pod-replication-controller/#my-pod-stays-pending
