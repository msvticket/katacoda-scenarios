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

If you are fast you will see that first the containers have not started yet and when running this
repeatedly you will see that it takes a while to get the container running and messages about the
progress are displayed in the bottom event section of the describe output.

Also try doing describe one a specific pod. Show the previous command with the up arrow key and then
you can use tab autocompletion.



