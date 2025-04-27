# minicube - kubectl - docker

## ~/nb_pt_dckr
## ~/nb_tf_dckr


sudo apt update
sudo apt install python3
sudo apt install python3-pip
sudo apt install python3-venv
python3 -m venv venv
source  venv/bin/activate
python -m pip install --upgrade pip
pip install jupyter

mkdir z
cd z

docker run -it --name mlflow bitnami/mlflow:latest

curl -LO https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/

kubectl version
helm repo add bitnami https://charts.bitnami.com/bitnami
sudo apt install apt-transport-https ca-certificates curl gnupg lsb-release -y

curl -fsSL https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash
helm version
helm repo add bitnami https://charts.bitnami.com/bitnami
helm repo update
sudo apt install minikube -y
curl -s https://packages.minikube.sigs.k8s.io/minikube/releases/latest/minikube-keyring.gpg | sudo gpg --dearmor -o /usr/share/keyrings/minikube-archive-keyring.gpg
minikube start 
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube_latest_amd64.deb
sudo dpkg -i minikube_latest_amd64.deb
minikube start
minikube stop

==========

docker ps -a
./r.sh 

mlflow
git clone https://github.com/mlflow/recipes-examples.git    mlflow-recipes-examples
cd mlflow-recipes-examples/

cd nb_pt_dckr/


## ~/nb_pt_dckr

sudo ufw list
sudo ufw status
sudo ufw delete 4
sudo ufw allow from 127.0.0.1/12 to any port 8888
sudo ufw allow from 172.16.0.0/12 to any port 8888

sudo netstat -tulnp | grep :5000
sudo lsof -i :5000

gedit readme.txt 
chmod +x r.sh

gedit r.sh 
./r.sh 

==========

cd nb_tf_dckr

cd nb_pt_dckr
docker build -t my-pt-jptr-env .

docker login
docker pull pytorch/pytorch
docker run -p 8888:8888 -v $(pwd):/app \
    --cap-drop=ALL \
    --cap-add=NET_BIND_SERVICE \
    -e GCP_API_KEY=$GCP_API_KEY \
    -e HF_TOKEN=$HF_TOKEN \
    -e DOCKER_TOKEN=$DOCKER_TOKEN \
    -e GH_TOKEN=$GH_TOKEN \
          
docker ps -a
docker image ls

docker build -t my-pt-jptr-env .

docker run -p 8888:8888 -v $(pwd):/app \
    --cap-drop=ALL --cap-add=NET_BIND_SERVICE  \
    -e GCP_API_KEY=$GCP_PB_API_KEY -e HF_TOKEN=$HF_LGTK_RONLY_TOKEN -e DOCKER_TOKEN=$DOCKER_PB_RD_ONLY_TOKEN -e GH_TOKEN=$GH_PB_TOKEN_NON_ADMIN \
    --rm -it my-pt-jptr-env
    
docker-compose
docker-compose --version
docker pull mlflow/mlflow:latest
mkdir mlflow-docker && cd mlflow-docker
docker build -t mlflow-custom .
docker ps -a
docker container rm 421b7195d4e0
docker container stop  421b7195d4e0
docker container rm 421b7195d4e0
docker ps -a

docker ps -a
docker run -it --name mlflow bitnami/mlflow:latest




