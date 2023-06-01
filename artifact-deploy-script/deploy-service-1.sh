#!/bin/bash
DATE=$(date -u +'%Y-%m-%dT%H-%M-%SZ')
sed -i "s|date:.*|date: $DATE|" service1-k8s-manifest.yaml
kubectl apply -f service1-k8s-manifest.yaml
