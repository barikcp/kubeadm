#Install CNI in Master Node.​ (Fire this commands in MasterNode)
kubectl apply -f "https://cloud.weave.works/k8s/net?k8s-version=$(kubectl version | base64 | tr -d '\n')"
