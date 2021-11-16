# Welcome to Notabee in Kubernetes!

Hello fellow SimpleNexus Developers! This repository contains a revolutionary and groundbreaking note taking app, **Notabee**. In order to get started, you need to have **Docker** installed and running on your machine. This repository contains a script for **Mac** to install **kubectl** and **kind** and to get your cluster up and running locally. To run it, navigate to the root directory of this repository, and run `./init.sh`. After running that script, you should be able to run `kubectl version --client` to see your version of `kubectl`, and `docker container ls` to see your cluster running in docker. Nice!

To delete the cluster, you can run `kind delete cluster`. Just run the script again to get it started up. There is more documentation available for kind here: https://kind.sigs.k8s.io/

We will be going through the setup and running of this app in the training on November 17. 
