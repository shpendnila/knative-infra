#!/bin/sh

# fetch kourier external IP
export INGRESS_IP=$(kubectl \
    --namespace kourier-system \
    get service kourier \
    --output jsonpath='{.status.loadBalancer.ingress[0].ip}')

export INGRESS_HOST=$INGRESS_IP.sslip.io

kubectl patch configmap/config-domain \
  --namespace knative-serving  \
  --type merge  \
  --patch '{"data":{"'$INGRESS_HOST'":""}}'

