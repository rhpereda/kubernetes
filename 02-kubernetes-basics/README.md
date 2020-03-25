# Kubernetes basics
Application to learn all the basics kubernetes concepts and commands follow this [tutorial](https://kubernetes.io/docs/tutorials/kubernetes-basics/) 

## Variables    
- `APP_NAME`: kubernetes-bootcamp
- `IMAGE_TAG`: gcr.io/google-samples/kubernetes-bootcamp:v1

## Commands
All the commands present in the [master Makefile](../Makefile) and also custom commands that are being grouped according its objective:

### Deployment commands 
- `make deployment-run`: Running deployment instead of creating. This allow to specify the port such as other things

### Services commands 
- `make services-expose`: Creates a service to expose the application
- `make services-delete-by-label`: Deletes services filtered by label. For instance `make delete-service-by-label label=run=kubernetes-bootcamp`

### Pods commands 
- `make pods-apply-label`: Add a label to running pod. For instance `make apply-label label=app=v1`
- `make pods-get-apis`: Gets the apis associated with the deployed pod

### Application commands
- `make app-proxy`: Creates proxy for access the deployed application
- `make app-port`: Get the exposed port for kubernetes-bootcamp application
- `make app-output`: Connect to the application running inside the container on the pod
- `make app-test`: Perform a curl to test the application by using the minikube ip and the exposed port
- `make app-update-image`: Update the application version by deploying a new image for the application
- `make app-confirm-update`: Get the update application status
- `make app-update-rollback`: Rollback a deployment to the previous state