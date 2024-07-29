# create a cluster
kind create cluster_name

# check clusters
kind get clusters

# push image to Kubernetes internal repository
kind load docker-image spark:our-own-apache-spark-kb8
