# Project for test and study kubernetes
The intention is learn kubernetes from scratch and use it minikube platform for run kubernetes cluster in local environment.
Do not enable Kubernetes capabilities in docker for mac instead we are going to use minikube to avoid to high coupling between 
docker for mac and kubernetes version.

## Conventions
- Every folder name started by a number (for instance: `01-hello-minikube`) is a project on this learning path 
- On every project should be a Makefile inheriting from the [master Makefile](Makefile)
- On every Makefile should be defined the variables `APP_NAME` and `IMAGE_TAG` used for create the required objects in the kubernetes cluster by using it as parameters 
in the master Makefile commands. If those variables are not defined the make commands will not work
- In order to run the commands corresponding to specific project we need to get inside the folder project in the console, for instance: `cd 01-hello-minikube` and then `make deployment-create`

## Requirements
Before start is imperative install all the required dependencies for running kubernetes locally:
- [docker desktop](https://hub.docker.com/editions/community/docker-ce-desktop-mac/)
- [kubectl](https://kubernetes.io/docs/tasks/tools/install-minikube/#install-kubectl)
- [a hypervisor](https://kubernetes.io/docs/tasks/tools/install-minikube/#install-a-hypervisor)
- [minikube](https://kubernetes.io/docs/tasks/tools/install-minikube/#install-minikube)
- [make](https://www.gnu.org/software/make/) 

## Commands
For better experience the commands are being grouped according its objective:

### Cluster commands 
- `make cluster-start`: Starts an empty kubernetes cluster in *minikube*
- `make cluster-status`: Gets the kubernetes cluster status
- `make cluster-stop`: Stops the kubernetes cluster
- `make cluster-delete`: Deletes the kubernetes cluster
- `make cluster-dashboard`: Opens the kubernetes cluster dashboard in web browser
- `make cluster-info`: Gets some info from the kubernetes cluster
- `make cluster-version`: Gets the client and server versions for *kubectl*
- `make cluster-nodes`: Gets the nodes presents in the kubernetes cluster

### Deployment commands 
- `make deployment-create`: Creates deployment object for an application
- `make deployment-delete`: Deletes the application deployment object and the pods associated
- `make deployment-describe`: Retrieve all the application's deployment objects specifications
- `make deployment-get`: Get the deployment object created for the application

### Services commands 
- `make service-create`: Creates service object for expose the application outside the kubernetes cluster
- `make service-delete`: Deletes the application's service
- `make service-describe`: Retrieve all the application's services specifications
- `make service-get`: Gets the application's services
- `make service-get-by-label`: Allows filter the pods by label. For instance `make get-services-by-label label=app=v1`

### Pods commands 
- `make pods-describe`: Retrieve all the application's pods specifications
- `make pods-get`: Gets the application's pods
- `make pods-get-by-label`: Allows filter the pods by label. For instance `make get-pods-by-label label=app=v1`
- `make pods-get-name`: Gets the pod name

### Replicas commands 
- `make replicas-get`: Gets the replicas

### Utilities commands 
- `make get-logs`: View the container logs
- `make execute`: Execute commands inside the container. For instance: `make execute command=env`
- `make container-session`: Opens and interactive session in the container

### Application commands 
- `make app-deploy`: Deploys the application by creating the deployment and the service objects through the command line
- `make app-undeploy`: Undeploy the application by deleting the deployment and service objects. This commands internally call the `delete-deployment` and `delete-service` commands
- `make app-scale`: Increase o decrease the number of replicas (increase the number of pods) that the application has. For intance: `make scale desired=2`

## Content
- [01-hello-minikube](./01-hello-minikube): Run a simple Node.js app on Kubernetes using Minikube.
- [02-kubernets-basics](./02-kubernetes-basics): Basics of the Kubernetes cluster orchestration system.
- [03-reactjs-cluster](./03-reactjs-cluster): Simple react application deployed in kubernetes cluster.