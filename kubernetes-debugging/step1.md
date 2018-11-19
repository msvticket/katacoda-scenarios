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

To get details about the deployment:

`kubectl get pods`{{execute}}

You get more information about the pods use:

`kubectl describe pod`{{execute}}

When running this repeateadly you will see that it takes a while to get the container running and
messages about the progres are displayed in the bottom event section of the describe output.

Also try doing descibe one a specific pod. Show the previous command with the up arrow key and then
you can use tab autocompletion.



