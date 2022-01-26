---
layout: post
title: Kubernetes basics
description: Quickstart guide
categories: systems-engineering containers
---

# Kubernetes Basics Program

1 - [Kubernetes Basics](#1---kubernetes-basics)  
2 - [Configuration](#2---configuration)  
3 - [Stateless Applications](#3---stateless-applications)  
4 - [Stateful Applications](#4---stateful-applications)  
5 - [Clusters](#5---clusters)  
6 - [Services](#6---services)  
7 - [Test](#7---test)  

## 1 - Kubernetes Basics  
https://kubernetes.io/docs/tutorials/kubernetes-basics/

### Create a Kubernetes Cluster
https://kubernetes.io/docs/tutorials/kubernetes-basics/create-cluster/cluster-intro/

```shell script
$ minikube start
$ minikube version
$ kubectl version
$ kubectl cluster-info
$ kubectl get nodes
```

### Deploy an app
https://kubernetes.io/docs/tutorials/kubernetes-basics/deploy-app/deploy-intro/

```shell script
$ kubectl <action> <resource>
$ kubectl <action> <resource> --help
$ kubectl create deployment <name> <app-image-location>
$ kubectl get deployments
$ kubectl proxy
$ curl http://localhost:8001/version
$ kubectl get pods
```

### Explore your app

https://kubernetes.io/docs/tutorials/kubernetes-basics/explore/explore-intro/

- kubectl get - list resources
- kubectl describe - show detailed information about a resource
- kubectl logs - print the logs from a container in a pod
- kubectl exec - execute a command on a container in a pod

```shell script
$ kubectl get pods
$ kubectl describe pods
$ curl http://localhost:8001/api/v1/namespaces/default/pods/$POD_NAME/proxy/
$ kubectl logs $POD_NAME
$ kubectl exec $POD_NAME env

$ kubectl exec -ti $POD_NAME bash
root@kubernetes-bootcamp-765bf4c7b4-c5wzl:/# curl localhost:8080
Hello Kubernetes bootcamp! | Running on: kubernetes-bootcamp-765bf4c7b4-c5wzl | v=1
root@kubernetes-bootcamp-765bf4c7b4-c5wzl:/# exit
```

### Expose your app publicly 
https://kubernetes.io/docs/tutorials/kubernetes-basics/expose/expose-intro/

```shell script
$ kubectl get pods
$ kubectl get services
$ kubectl expose deployment/kubernetes-bootcamp --type="NodePort" --port 8080
service/kubernetes-bootcamp exposed
$ kubectl get services
$ kubectl describe services/kubernetes-bootcamp

$ kubectl get pods -l run=kubernetes-bootcamp
$ kubectl get services -l run=kubernetes-bootcamp
$ kubectl label pod $POD_NAME app=v1

$ kubectl delete service -l run=kubernetes-bootcamp
$ kubectl get services
```

### Running Multiple Instances of Your App

```shell script
$ kubectl get rs
$ kubectl scale deployments/kubernetes-bootcamp --replicas=4
$ kubectl get deployments
$ kubectl get pods -o wide
$ kubectl describe deployments/kubernetes-bootcamp

$ kubectl describe services/kubernetes-bottcamp
curl $(minikube ip):$NODE_PORT
$ kubectl scale deployments/kubernetes-bootcamp  --replicas=2
$ kubectl get pods -o wide
```
### Updating Your App

```shell script
$ kubectl get deployments.apps
$ kubectl get pods
```

## 2 - Configuration
https://kubernetes.io/docs/tutorials/kubernetes-basics/
https://kubernetes.io/docs/tutorials/configuration/configure-redis-using-configmap/

## 3 - Stateless Applications



```shell script
```

```shell script
```


## 4 - Stateful Applications

## 5 - Clusters

## 6 - Services

## 7 - Test
