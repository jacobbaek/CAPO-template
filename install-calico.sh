#!/bin/bash

clusterctl get kubeconfig capo-jacobcluster > ~/.kube/capo.kubeconfig
curl https://docs.projectcalico.org/manifests/calico.yaml -O
kubectl --kubeconfig=/home/jacob/.kube/capo.kubeconfig create -f calico.yaml 
