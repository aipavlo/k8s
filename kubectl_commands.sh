kubectl version

# get all namespaces
kubectl get namespaces

# create namespace
kubectl apply -f - <<EOF
apiVersion: v1
kind: Namespace
metadata:
  name: livy-operator
EOF


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

# get all deployments
kubectl get deployments --all-namespaces
kubectl get sparkapplications --namespace spark-operator
kubectl delete sparkapplication spark-pi --namespace spark-operator
kubectl delete pod <pod_name> --namespace=livy-operator
