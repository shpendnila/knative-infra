#!/bin/sh

# requirements: k8s version >= 1.22

# deploy the CRDs
kubectl apply \
    --filename https://github.com/knative/serving/releases/download/knative-v1.4.0/serving-crds.yaml

# deploy the core components
kubectl apply \
    --filename https://github.com/knative/serving/releases/download/knative-v1.4.0/serving-core.yaml