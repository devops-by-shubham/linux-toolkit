#!/usr/bin/env bash
set -euo pipefail

# Setup Kubernetes via kubeadm (single-node cluster)
# Pre-requisites: docker and kubectl installed
sudo swapoff -a
sudo kubeadm init --pod-network-cidr=192.168.0.0/16
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
kubectl apply -f https://docs.projectcalico.org/manifests/calico.yaml