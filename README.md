# appcsharp
exo_app_csharp

##### Build/push app
``docker built -t hanryos/appcsharp .``
``docker push hanryos/appcsharp``

##### Kubernet cmd

``minikube start --driver=docker``
``kubectl create deployment appcsharp --image hanryos/appcsharp``
``kubectl expose deployment/appcsharp --type LoadBalancer --port 80``
``kubectl scale deployment/appcsharp --replicas 5``
