#### Launch Cluster

`launch.sh`{{execute}}

This will create a local Kubernetes cluster.

#### Deploy application

As a reference start deploying a simple working application:

<pre class="file" data-filename="nginx-with-request.yaml" data-target="replace">apiVersion: apps/v1
kind: Deployment
metadata:
  name: nginx-deployment
spec:
  selector:
    matchLabels:
      app: nginx
  replicas: 2
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
            memory: "128Mi"
            cpu: "500m"
        ports:
        - containerPort: 80
</pre>


`
kubectl apply -f nginx-with-request.yaml
`{{execute}}

To get details about the deployment

`kubectl get pods`{{execute}}

You get more information about a pod using:

`kubectl describe pod `{{copy}}

Fill in the exact name of the pod from the output of the previous command.


Likewise you can get the log of a pod using:

`kubectl logs `{{copy}}



