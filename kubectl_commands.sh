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

# get deployments and delete
kubectl get deployments --all-namespaces
kubectl delete deployment <deployment-name> --namespace=<namespace>
# get aplication and delete
kubectl get sparkapplications --namespace spark-operator
kubectl delete sparkapplication spark-pi --namespace spark-operator
kubectl delete pod <pod_name> --namespace=livy-operator

kubectl get svc --namespace livy-operator
kubectl get configmaps -n livy-operator

