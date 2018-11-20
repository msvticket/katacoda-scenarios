kubectl get deployments nginx-broken | fgrep -q '1         1         1            1' && echo done
