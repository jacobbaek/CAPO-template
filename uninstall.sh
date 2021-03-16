#!/bin/bash

clusterctl delete --all --include-crd --include-namespace
kubectl delete ns/capi-webhook-system
kubectl delete -f https://github.com/jetstack/cert-manager/releases/download/v0.11.1/cert-manager.yaml
