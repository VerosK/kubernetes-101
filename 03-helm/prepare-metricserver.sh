#!/bin/bash

set -e
set -x

kubectl get ns metrics-server || kubectl create ns metrics-server

#helm pull stable/metrics-server --untar --version 2.9.0 --untar-dir charts


#helm template metrics stable/metrics-server --output-dir ./manifests --namespace metrics-server \
#  --values ./metrics-server-values.yml

helm upgrade --install metrics stable/metrics-server --namespace metrics-server --values ./metrics-server-values.yml
