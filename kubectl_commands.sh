kubectl version

# get all namespaces
kubectl get namespaces

# get description of namespace
kubectl describe namespace <namespace-name>


# info about cluster
kubectl cluster-info


# get all pods
kubectl get pods --all-namespaces

# check pod information
kubectl describe pod <pod_name>

# check logs of pods
kubectl logs <pod_name>
