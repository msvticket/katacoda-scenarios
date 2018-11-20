Sometimes it's useful to get a shell in a running container. This might be to try connectivity or
check logs that are neither sent to standard output nor Elasticsearch.

This is done with `kubectl exec -it POD -- /bin/bash`{{copy}}. Try it it with one of the running pods!

You might notice that very few commands are installed. It might be possible to install applications in the container that you need for debugging. Since the nginx images are built on debian you can use `apt-get` to install stuff. To install `lsof` try for example

`
apt-get update
apt-get install lsof
`{{execute}}


To for example see all tcp connections in the container you can then execute

`
lsof -i
`{{execute}}
