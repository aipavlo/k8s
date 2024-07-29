# install helm chart
curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
chmod 700 get_helm.sh
./get_helm.sh

helm version
helm repo update
helm repo add incubator https://charts.helm.sh/incubator --force-update
helm repo add spark-operator https://kubeflow.github.io/spark-operator
helm search repo <name>
helm list
helm repo list

helm install my-release-bitnami oci://registry-1.docker.io/bitnamicharts/spark
helm uninstall my-release
