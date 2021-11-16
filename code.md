kubectl apply -f ./.kubernetes/notabee-frontend-deployment.yaml
kubectl get deployments
kubectl apply -f ./.kubernetes/notabee-frontend-service.yaml
kubectl get services
kubectl apply -f ./.kubernetes/notabee-ingress.yaml
kubectl get ingress

kubectl get pods
kubectl logs my-pod
kubectl explain pods

kubectl apply -f ./.kubernetes/

kind delete cluster