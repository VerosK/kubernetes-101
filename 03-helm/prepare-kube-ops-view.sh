#!/bin/bash

set -e
set -x


# prepare namespaces
kubectl get ns kube-ops-view || kubectl create ns kube-ops-view

# Add helm chart repo
helm repo add k8s-at-home https://k8s-at-home.com/charts/
helm repo update k8s-at-home

# install the chart
helm install kube-ops-view k8s-at-home/kube-ops-view --values values.yml --namespace kube-ops-view

#or render it
helm template kube-ops-view k8s-at-home/kube-ops-view --values values.yml --namespace kube-ops-view


# upgrade
#helm upgrade --install kube-ops-view k8s-at-home/kube-ops-view

# inspect
#helm pull k8s-at-home/kube-ops-view --untar

