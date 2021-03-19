#!/bin/bash

kubectl delete openstackcluster  --all
kubectl delete machinedeployments --all
kubectl delete openstackmachinetemplates --all
kubectl delete kubeadmcontrolplanes --all
kubectl delete secret -l clusterctl.cluster.x-k8s.io/move=true
kubectl delete kubeadmconfigtemplate --all
kubectl delete cluster/capo-jacobcluster

kubectl delete -f capo-cluster.yaml

clusterctl delete --all --include-crd --include-namespace
kubectl delete ns/capi-webhook-system
kubectl delete -f https://github.com/jetstack/cert-manager/releases/download/v0.11.1/cert-manager.yaml
