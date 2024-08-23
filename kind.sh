# create a cluster
kind create cluster_name

# check clusters
kind get clusters

# push image to Kubernetes internal repository
kind load docker-image spark:our-own-apache-spark-kb8

# push image to kubernetes repos
kind load docker-image spark:version_tag

# create the service account named “spark”
kubectl create serviceaccount spark

# cluster-level role binding for the service account
kubectl create clusterrolebinding spark-role - clusterrole=edit - serviceaccount=default:spark - namespace=default
