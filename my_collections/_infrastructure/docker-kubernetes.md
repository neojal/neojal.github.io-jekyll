---
layout: post
title: Docker and Kubernetes
description: Quickstart guide
categories: systems-engineering containers
---

# Learning Docker

## Introduction

Docker mission: Build, Ship & Run distributed applications.  

* Build: Docker Image.
* Ship: Docker Hub (or another repository)
* Run: Docker Container.

Avoid single point of failure by running multiple containers.  


### What is a Container (General)?

A collection of software processes unified by one namespace,
with access to an operating system kernel that shares with other
containers and little to no access between containers.

### Docker Instance

A runtime of a Docker image contains three things:

1. A Docker image.
2. An Execution environment.
3. A standard set of instructions

### Docker Engine

Comprised of the runtime and packaging tool; **must** be installed in
the hosts that run Docker.

### Difference between VM and a Container:

#### VM:

- The entire guest operating system to interact with the apps.
    
#### Container:

- Shares the host kernel with other containers.
- Needs Docker Engine installed on the Host.
- Run as isolated processes on the host OS.
- Includes the application and all of its dependencies.
       
### Container benefits for Developers:

Apps are:  

* portable
* packaged in a standard way

Deployment is:

* Easy
* Repeatable
* Automated testing, packaging, and integrations
* Support new microservice architectures
* Alleviate platform compatibility issues

### Benefits for DevOps:

* Reliable deployments: improve speed and frequency of releases.
* Consistent application lifecycle: configure once and run multiple times.
* Improves communication between developers and devops.

# Learning Kubernetes
Container orchestrator: manages containers in a host or across your whole infrastructure.

## K8S introduction

**Container orchestrator features**:  
 
* Provision hosts
* Instantiate containers on a host
* Restart failing containers
* Expose containers as service outside the cluster
* Scale the cluster up and down

Kubernetes is a platform to schedule and run containers on:

- clusters of VM
- bare metal
- private data center
- public cloud

### Kubernetes Features

**Multi-Host Container Scheduling**:

- Done by the _kube-scheduler_
- Assigns pods to nodes at runtime
- Checks resources, quality of service and user specifications before scheduling
    
**Availability**:

- Kubernetes _master node_ can be deployed in a highly available configuration
- Multi region deployments available

**Scalability**:

- Registration: seamless working nodes register themselves with master node.
- Service discovery: automatic detection of services and endpoints via DNS or environment variables

**Persistent Storage**

* Useful and important feature when working with containers
* Pods can use persistent volumes to store data
* Data retained across pod restarts and crashes

**Logging and Monitoring**:

* Application monitoring built in
    * TCP, HTTP, or container execution health check
* Node health check
    * Failures monitored by node controller
* Kubernetes status
    * can also be monitored via add-ons
    
**Secrets management**:

* Sensitive data is first-class citizen
* Mounted as data volumes or environment variables
* Specific to namespace

### Kubernetes Cluster Architecture
[kubernetes.io - components](https://kubernetes.io/docs/concepts/overview/components/)

![k8s-architecture](/assets/k8s-architecture.png)

**Master Node**:

- API server
- Scheduler
- Controller Manager
    - node controller
    - replication controller
    - service account
    - ...
 
**etcd**:

- key/value store
- configuration/schedules storage
  
**kubectl**:

- _cli_ to interact with the master node
- kubeconfig (config file)
    - auth info to access the API server
  
**Worker nodes**:

- is where our applications operate
- **kubelet**: manages communication processes
- **kube proxy**: network proxy and load balancer
- **docker**: allows containers execution
    - **pod**: is the smallest component that can be deployed in kubernetes and is made of one or more containers.
        - **containers**: are stored in pods
        - this group of containers share storage, IP address, namespace, etc.
 
Another view of a K8s cluster:

![k8s-cluster-view](/assets/k8s-cluster-view.png) 
 
### Nodes and Pods 

#### Nodes

* A node is a worker machine in K8s. 
* A node may be a VM or physical machine, depending on the cluster. 

**Node Requirements**:
- a Kubelet running
- container tooling like Docker
- a kube-proxy process running
- supervisord (process control system)

In production, it's recommended to have at least a 3 node cluster.    

#### Pod

Pods are the simplest deployable unit of computing that can be created 
and managed in Kubernetes.  

A pod is a group of one or more containers with shared storage/network 
and a specification for how to run the containers.   

The containers in a pod share the same IP address and port space, 
and can communicate between them with localhost.  

Containers in a pod share a context.

**What's in the pod?**

* Your docker application container
* Storage resources
* Unique network IP
* Options that govern how the container(s) should run

**Pods are**:

* Ephemeral, disposable
* Never self-heal and not restarted by the scheduler itself 

**Pod lifecycle**:

- Pending: Pod accepted by k8s, but no container running yet
- Running: Pod has been scheduled in a node.
- Succeeded (status 0): all containers in a pod are in execution.
- Failed (non 0 status): at least one container has failed.
- CrashLoopBackOff: kubernetes tries over and over to restart a pod.

### Controllers: Deployments, ReplicaSets, and Services

**Benefits of Controllers**:  

* App reliability
* Scaling
* Load balancing  

**Kinds of Controllers**:

* ReplicaSets
- Deployments
- DaemonSets
- Jobs
- Services

**ReplicaSets**: Ensures that a specified number of replicas 
for a pod are running at the same time.

**Deployments**: A Deployment controller provides declarative updates
for pods and ReplicaSets. Use cases:

- Pod management (Running a ReplicaSet)
- Scaling a ReplicaSet
- Pause (make changes) and Resume deployments
- Status, check for health of the pods

**DaemonSets**: ensure that all nodes run a copy of a specific pod.
As nodes are added or removed from the cluster, a DaemonSet will add 
or remove the required pods.

**Jobs**: Supervisor process for pods carrying out batch jobs. Run individual
processes that run once and complete successfully. Run as a cronjob.

**Service**: Allows the communication between one set of deployments with other.
Use a service to get pods in two deployments to talk to each other.

- Internal: IP is only reachable within the cluster.
- External: endpoint available through node ip:port (NodePort).
- Load Balancer: Exposes application to the internet with a load balancer (cloud provider).

### Labels, Selectors, and Namespaces
These constructs allow us to annotate and organize our apps. Usually used with
kubectl.

**Labels**: are key/value pairs that are attached to objects like pods,
services, and deployments. Labels are for users of Kubernetes to identify
attributes for objects.

``"label":value"``

**Selectors**: Used to select components by _label_ and/or _value_.

- Equality-based selectors: =, !=
- Set-based selectors: IN, NOTIN, EXIST

**Namespaces**: allows to have multiple virtual clusters in the same physical cluster.

- great for large enterprises
- allows teams to access resources, with accountability
- divide cluster resources between users
- scope for names must be unique in each namespace

- "Default" namespace created when you launch Kubernetes.
- Objects placed in "default" namespace at start.
- Newer applications install their resources in a different namespace.

### Kubelet and kube-proxy

#### Kubelet
Is the "Kubernetes node agent" that runs on each node. 

Kubelet roles:

- Communicates with API server to see if pods have been assigned to nodes.
- Executes pod containers via a container engine
- Mounts and runs pod volumes and secrets
- Executes health checks to identify pod/node status

The Kubelet works in terms of **Podspec**:

- YAML file that describes a pod.

The Kubelet takes a set of Podspecs provided by kube-apiserver and
ensures that containers described in those Podspecs are running and healthy.

Kubelet only manages containers that were created by the API server.



#### kube-proxy: the network proxy

- Works on all nodes
- Reflects services as defined on each node

There are three modes of kube-proxy:

1. User space mode (the most common)
2. Iptables mode
3. Ipvs mode

- kube-proxy watches the API server for the addition and removal of services.
- connections to the node are then proxied to the corresponding node

---

## Kubernetes Hello-World!

### Running Kubernetes in Windows 10

To run Kubernetes locally in Windows 10, there are four general components required 
that I have detected:

* **Virtualization technology**:  
    - WSL2 (Windows10, version 2004, build 19041 or higher). WSL2 uses Hyper-V architecture to enable virtualization.  
    - Hyper-V (Windows 10 pro)   
    - Virtual Machines: VirtualBox, VMware, etc.
   
* **Container technology**:
    - [Docker](https://www.docker.com/resources/what-container)
    - [Docker alternatives](https://containerjournal.com/topics/container-ecosystems/5-container-alternatives-to-docker/)
    
* **Kubernetes Client**:
    - [kubctl](https://kubernetes.io/docs/reference/kubectl/overview/)
    
* **Kubernetes Server (cluster)**: 
    - [Docker-Desktop](https://docs.docker.com/docker-for-windows/kubernetes/)
    - [Minikube](https://kubernetes.io/docs/setup/learning-environment/minikube/)
    - [KinD](https://kind.sigs.k8s.io/)
    - Managed Kubernetes: 
        - [Amazon EKS](https://aws.amazon.com/eks/) 
        - [Google GKE](https://cloud.google.com/kubernetes-engine)

So, as you can see, there are several alternatives to run Kubernetes locally in Windows.
There are some posts with different component stacks:

* [Docker-Desktop + WSL2 + KinD or Minikube](https://kubernetes.io/blog/2020/05/21/wsl-docker-kubernetes-on-the-windows-desktop/)
* [Minikube vs Docker-Desktop](https://medium.com/containers-101/local-kubernetes-for-windows-minikube-vs-docker-desktop-25a1c6d3b766)

### Option 1: Hyper-V and Minikube

Windows 10 pro required because Hyper-V system is required.

1. Install Docker-Desktop, then:

    ```bash
    # docker --version
    ```

2. Install/Enable kubectl, then:

    ```bash
    # kubectl version --client
    ```

3. Install Minikube, then:

    ```bash
    # minikube start
    ```

4. On Windows: Hyper-V Manager: 
    - Actions -> Virtual Switch Manager
    - New Virtual Network Switch -> Internal -> Create Virtual Switch
        - name: "minikube"
        - select: "Internal Network"
        - click OK.
    
5. In Windows: Network and Sharing center:  
    - Select the current Internet connection
        - Properties -> Sharing tab
        - Check "Allow other network users..."
        - Select vEthernet (minikube)
        - Keep checked "Allow other network users to control or..."
        - click OK
    
6. Start Minikube with driver and switch parameters:

    ```cmd
    > minikube start --vm-driver="hyperv" --hyperv-virtual-switch="minikube"
    ```

7. Done! kubectl can now talk to Minikube cluster.

    ```
    > kubectl get nodes
    NAME       STATUS   ROLES    AGE   VERSION
    minikube   Ready    master   19m   v1.18.3
    ```

8. Windows Hyper-V manages Docker and Minikube VM:

    ![k8s-hyperv](/assets/k8s-win-hyperv.png)

### Option 2: WSL2 and Docker-Desktop

1. Enable WSL2 in Windows 10.
2. Install Docker-Desktop.
    1. Settings -> Resources -> WSL Integration: check Enable and check additional distros.
    2. Settings -> Kubernetes: check Enable Kubernetes.

Now you can execute `docker` and `kubectl` commands in PowerShell, and
also in an installed distro only if __additional distro__ was selected
(such as Ubuntu running in WSL). 

```bash
$ docker --version
Docker version 19.03.8, build afacb8b7f0

$ kubectl version
Client Version: version.Info{Major:"1", Minor:"16+", GitVersion:"v1.16.6-beta.0", GitCommit:"e7f962ba86f4ce7033828210ca3556393c377bcc", GitTreeState:"clean", BuildDate:"2020-01-15T08:26:26Z", GoVersion:"go1.13.5", Compiler:"gc", Platform:"linux/amd64"}
Server Version: version.Info{Major:"1", Minor:"16+", GitVersion:"v1.16.6-beta.0", GitCommit:"e7f962ba86f4ce7033828210ca3556393c377bcc", GitTreeState:"clean", BuildDate:"2020-01-15T08:18:29Z", GoVersion:"go1.13.5", Compiler:"gc", Platform:"linux/amd64"}

$ kubectl get nodes
NAME             STATUS   ROLES    AGE   VERSION
docker-desktop   Ready    master   58m   v1.16.6-beta.0

$ kubectl cluster-info
Kubernetes master is running at https://kubernetes.docker.internal:6443
KubeDNS is running at https://kubernetes.docker.internal:6443/api/v1/namespaces/kube-system/services/kube-dns:dns/proxy

$ kubectl describe node docker-desktop
Name:               docker-desktop
Roles:              master
Labels:             beta.kubernetes.io/arch=amd64
```

**Kubernetes exercises**: [github-karthequian-kubernetes](https://github.com/karthequian/kubernetes)


****:
****:
****:

