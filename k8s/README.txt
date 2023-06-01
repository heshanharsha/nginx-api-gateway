### Deploy Nginx ingress contraller for Load balancing and revers proxy

prerequisite
    1. kubectl
    2. Helm

1. Add the ingress-nginx repository:
helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
helm repo update

2. Install the Ingress-nginx Helm chart:
helm install ingress-nginx ingress-nginx/ingress-nginx

### Deploy cert-manager and Create a ClusterIssuer for SSL

prerequisite
    1. kubectl

3. Install cert-manager for SSL 
kubectl apply -f https://github.com/cert-manager/cert-manager/releases/download/v1.12.0/cert-manager.yaml

4. Create a ClusterIssuer
kubectl apply -f cluster-issuer.yaml
