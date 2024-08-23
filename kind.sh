# create a cluster
kind create cluster_name

# check clusters
kind get clusters

# push image to Kubernetes internal repository
kind load docker-image spark:our-own-apache-spark-kb8

# push image to kubernetes repos
kind load docker-image spark:version_tag
