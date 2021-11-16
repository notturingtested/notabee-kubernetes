#!/bin/bash
#install kubectl
if brew ls --versions kubectl > /dev/null; then
  brew upgrade kubectl
else
  brew install kubectl 
fi
#install kind
if brew ls --versions kind > /dev/null; then
  brew upgrade kind
else
  brew install kind 
fi
#creates a kind cluster with the ports 80 and 443 exposed
cat <<EOF | kind create cluster --config=-
kind: Cluster
apiVersion: kind.x-k8s.io/v1alpha4
nodes:
- role: control-plane
  kubeadmConfigPatches:
  - |
    kind: InitConfiguration
    nodeRegistration:
      kubeletExtraArgs:
        node-labels: "ingress-ready=true"
  extraPortMappings:
  - containerPort: 80
    hostPort: 80
    protocol: TCP
  - containerPort: 443
    hostPort: 443
    protocol: TCP
EOF
#add mysql for demo purposes.
kubectl apply -f ./.kubernetes/notabee-mysql-deployment.yaml -f ./.kubernetes/notabee-mysql-service.yaml
#applies nginx ingress and waits until it is up and ready. 
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/main/deploy/static/provider/kind/deploy.yaml
sleep 5
kubectl wait --namespace ingress-nginx \
  --for=condition=ready pod \
  --selector=app.kubernetes.io/component=controller \
  --timeout=90s