# Kubernetes basics
Application to learn all the basics kubernetes concepts and commands follow this [tutorial](https://kubernetes.io/docs/tutorials/kubernetes-basics/) 

## Commands
- create-deployment: Creates deployment object for kubernetes-bootcamp application
- get-deployment: Get the deployment unit created
- delete-deployment: Delete the deployment for kubernetes-bootcamp application 
- proxy: Creates proxy for access the deployed application
- get-pods: Gets the pods
- pod-name: Gets the pod name
- pod-apis: Gets the apis associated with the deployed pod
- describe-pods: Describe all the pods characteristics
- app-output: Connect to the application running inside the container on the pod
- logs: View the container logs
- execute: Execute commands inside the container. For instance: `make execute command=env`
- container-session: Opens and interactive session in the container
- run-deployment: Running deployment instead of creating. This allow to specify the port such as other things
- get-services: Get all the cluster services
- expose: Creates a service to expose the application
- describe-service: Get all services specifications
- app-port: Get the exposed port for kubernetes-bootcamp application
- test-app: Perform a curl to test the application by using the minikube ip and the exposed port
- describe-deployment: Describes the deployment object
- get-pods-by-label: Allows filter the pods by label. For instance `make get-pods-by-label label=app=v1`
- get-services-by-label: Allows filter the pods by label. For instance `make get-services-by-label label=app=v1`
- apply-label: Add a label to running pod. For instance `make apply-label label=app=v1`
- delete-service-by-label: Deletes services filtered by label. For instance `make delete-service-by-label label=run=kubernetes-bootcamp`
- get-replicas: Gets the numbers of replicas
- scale: Increase o decrease the number of replicas that the application has. For intance: `make scale desired=2`
- update-image: Update the application version by deploying a new image for the application
- confirm-update: Get the update application status
- rollback: Rollback a deployment to the previous state