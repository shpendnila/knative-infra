# knative-infra
Knative serving infrastructure on kubernetes

1. Deploy the CRDs and core components by running the deploy-knative script: `./deploy-knative.sh` .
2. After knative serving it's deployed, check for all pods if they are in the Running status:
`kubectl get po -n knative-serving`. Wait for all the pods to run.
3. After knative is set up, deploy kourier which is a lightweight knative serving ingress by running `deploy-kourier.sh` script.
4. Check if the kourier system is up and running by checking if the pods are running successfully: `kubectl get po -n kourier-system`
