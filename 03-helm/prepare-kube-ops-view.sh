#!/bin/bash

set -e
set -x

kubectl get ns kube-ops-view || kubectl create ns kube-ops-view

helm repo add k8s-at-home https://k8s-at-home.com/charts/

helm repo update k8s-at-home

helm install kube-ops-view k8s-at-home/kube-ops-view --namespace kube-ops-view

#helm upgrade --install kube-ops-view k8s-at-home/kube-ops-view

#helm pull k8s-at-home/kube-ops-view --untar

