# Project for test and study kubernetes
The intention is learn kubernetes from scratch and use it minikube platform for run kubernetes cluster in local environment.
Do not enable Kubernetes capabilities in docker for mac instead we are going to use minikube to avoid to high coupling between 
docker for mac and kubernetes version.

## Requirements
Before start is imperative install all the required dependencies for running kubernetes locally:
- [docker desktop](https://hub.docker.com/editions/community/docker-ce-desktop-mac/)
- [kubectl](https://kubernetes.io/docs/tasks/tools/install-minikube/#install-kubectl)
- [a hypervisor](https://kubernetes.io/docs/tasks/tools/install-minikube/#install-a-hypervisor)
- [minikube](https://kubernetes.io/docs/tasks/tools/install-minikube/#install-minikube)
- [make](https://www.gnu.org/software/make/)

## Content
- [01-hello-minikube](./01-hello-minikube): Run a simple Node.js app on Kubernetes using Minikube.