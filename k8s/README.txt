### Deploy Nginx ingress contraller for Load balancing and revers proxy

prerequisite
    1. kubectl
    2. Helm

1. Add the ingress-nginx repository:
helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
helm repo update

2. Install the Ingress-nginx Helm chart:
helm install ingress-nginx ingress-nginx/ingress-nginx
