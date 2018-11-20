

<pre class="file" data-filename="nginx-broken.yaml" data-target="replace">apiVersion: apps/v1
kind: Deployment
metadata:
  name: nginx-broken
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
        args: ["foo", "bar"]
        resources:
          limits:
            memory: "128Mi"
            cpu: "500m"
        ports:
        - containerPort: 80
</pre>


`
kubectl apply -f nginx-broken.yaml
`{{execute}}

So, how did this go. As in the previous step check the name of the pod with `kubectl get pods` and the details with `kubectl describe pod`.

You can get the log of a specific pod using:

`kubectl logs `{{copy}}

So, what is the problem?
