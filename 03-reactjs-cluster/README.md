# Project for deploy a react application in kubernetes
The intention is build a simple react application using the [react generator](https://github.com/facebook/create-react-app) and deployed into 
kubernetes cluster locally following this [tutorial](https://dev.to/rieckpil/deploy-a-react-application-to-kubernetes-in-5-easy-steps-516j)

## Variables    
- `APP_NAME`: my-react-app
- `IMAGE_TAG`: reiniel/my-react-app:latest

## Requirements
Before start is imperative install all the required dependencies for running kubernetes locally:
- [nodejs](https://nodejs.org/es/download/)
- [docker](https://runnable.com/docker/install-docker-on-linux)

## Commands
All the commands present in the [master Makefile](../Makefile) and also custom commands that are being grouped according its objective:

### Deployment commands 
- `make deployment-apply`: Creates deployment object by applying yml configuration

### Docker commands 
- `make docker-build`: Create a runnable docker image for the application
- `make docker-push`: Push the application's docker image to registry defined by `IMAGE_TAG` variable

### Application Commands
- `make app-build`: Builds the application by using `npm run build`
- `make app-docker-build`: Builds the application's docker image and push it to registry by executing the following make commands in that order: 
    ```
    make app-build
    make docker-build
    make docker-push
    ```