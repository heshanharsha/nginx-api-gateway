#!/bin/bash
DATE=$(date -u +'%Y-%m-%dT%H-%M-%SZ')
sed -i "s|date:.*|date: $DATE|" service2-k8s-manifest.yaml
kubectl apply -f service2-k8s-manifest.yaml
