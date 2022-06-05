# knative-infra
Knative infrastructure on kubernetes

Deploy the CRDs and core components by running the deploy-knative script.
After knative it's deployed, check for all pods if they are in the Running status:
`kubectl get po -n knative-serving`. Wait for all the pods to run.
