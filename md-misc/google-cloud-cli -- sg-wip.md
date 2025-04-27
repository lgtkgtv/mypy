# How to Install google-cloud-cli
  ref: https://cloud.google.com/sdk/docs/install#deb
  
```  
sudo apt-get update
sudo apt-get install apt-transport-https ca-certificates gnupg curl

curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo gpg --dearmor -o /usr/share/keyrings/cloud.google.gpg
echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list

sudo apt-get update && sudo apt-get install google-cloud-cli
```

```
Following optional components can be installed   

    google-cloud-cli-cloud-build-local
    google-cloud-cli-local-extract

    google-cloud-cli-minikube
    kubectl

    google-cloud-cli-terraform-validator

    google-cloud-cli-app-engine-go
    google-cloud-cli-app-engine-grpc
    google-cloud-cli-app-engine-java
    google-cloud-cli-app-engine-python
    google-cloud-cli-app-engine-python-extras

    google-cloud-cli-bigtable-emulator
    google-cloud-cli-datastore-emulator
    google-cloud-cli-firestore-emulator
    google-cloud-cli-pubsub-emulator
    google-cloud-cli-spanner-emulator

    google-cloud-cli-app-engine-go
    google-cloud-cli-app-engine-grpc
    google-cloud-cli-app-engine-java
    google-cloud-cli-app-engine-python
    google-cloud-cli-app-engine-python-extras

    google-cloud-cli-gke-gcloud-auth-plugin
```

```
sudo apt-get install google-cloud-cli-app-engine-java
gcloud init
gcloud cheat-sheet
```

# Google Cloud CLI
  https://cloud.google.com/sdk/docs   

