#### Launch Cluster

`launch.sh`{{execute}}

This will create a two node Kubernetes cluster using WeaveNet for networking.

#### Deploy application

As a reference start deploying a simple working application:

`
kubectl apply nginx-with-request.yaml
`{{execute}}

To get details about the deployment

`kubectl get pods`{{execute}}

You get more information about a pod using:

`kubectl describe pod `{{copy}}

Fill in the exact name of the pod from the output of the previous command.


Likewise you can get the log of a pod using:

`kubectl logs `{{copy}}



