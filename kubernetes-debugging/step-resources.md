

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
kubectl apply -f nginx-broken.yaml
`{{execute}}

So, how did this go. As in the previous step check the name of the pod with `kubectl get pods` and the details with `kubectl describe pod`.

So, what is the problem?
