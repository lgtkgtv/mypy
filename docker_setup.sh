#!/bin/bash

install_docker() {
  # Check if Docker is already installed
  if command -v docker &> /dev/null; then
    echo "Docker is already installed."
    return 0
  fi

  # Install Docker dependencies
  echo "Installing Docker dependencies..."
  sudo apt-get update
  sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common

  # Add Docker's official GPG key and repository
  echo "Adding Docker's official GPG key and repository..."
  curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo tee /etc/apt/trusted.gpg.d/docker.asc
  sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

  # Install Docker CE, CLI, containerd, and docker compose plugin
  echo "Installing Docker..."
  sudo apt-get update
  sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin

  # Disable Docker service from starting automatically
  sudo systemctl disable docker.service

  # Set Docker to run without sudo
  echo "Configuring Docker to run without sudo..."
  sudo usermod -aG docker $USER
  newgrp docker

  # Verify Docker installation
  echo "Verifying Docker installation..."
  docker --version
  echo "Docker installation complete. Docker service is disabled. Use 'start_docker' to start."
}

# Function to manually start Docker
start_docker() {
  echo "Starting Docker service..."
  sudo systemctl start docker.service
  echo "Docker service started."
}

# Function to manually stop Docker
stop_docker() {
  echo "Stopping Docker service and socket..."
  sudo systemctl stop docker.service
  sudo systemctl stop docker.socket
  echo "Docker service and socket stopped."
}

# Function to clean up Docker (stop, uninstall, remove configurations)
cleanup_docker() {
  echo "Cleaning up Docker..."
  stop_docker
  sudo apt-get purge -y docker-ce docker-ce-cli containerd.io docker-compose-plugin
  sudo rm -rf /var/lib/docker
  sudo rm -rf /etc/docker
  sudo rm /etc/apt/sources.list.d/docker.list
  sudo rm /etc/apt/trusted.gpg.d/docker.asc
  sudo rm -rf /etc/containerd
  sudo groupdel docker
  sudo apt-get update
  echo "Docker cleanup complete."
}

# Function to check how Docker is installed
check_docker_installation() {
  if command -v docker &> /dev/null; then
    echo "Docker is installed."
    if dpkg -l | grep -q docker; then
      echo "Docker installed via apt or docker.io."
    fi
    if snap list docker &> /dev/null; then
      echo "Docker installed via Snap."
    fi
    if [ -f /etc/systemd/system/docker.service ]; then
      echo "Docker installed via the installation script (get.docker.com)."
    fi
    if dpkg -l | grep -q docker-desktop; then
      echo "Docker Desktop is installed."
    fi
  else
    echo "Docker is not installed on this system."
  fi
}

# Function to log in to Docker Hub using the token stored in $DOCKER_TOKEN
docker_login() {
  if [ -z "$DOCKER_TOKEN" ]; then
    echo "Error: DOCKER_TOKEN environment variable is not set."
    return 1
  fi

  echo "Logging in to Docker Hub..."
  echo "$DOCKER_TOKEN" | docker login --username "$DOCKER_USERNAME" --password-stdin

  if [ $? -eq 0 ]; then
    echo "Successfully logged in to Docker Hub."
  else
    echo "Failed to log in to Docker Hub."
  fi
}


: '
This is a
multi-line
comment.

remove_podman() {
  # Check if Podman is installed
  if ! command -v podman &> /dev/null; then
    echo "Podman is not installed. Nothing to remove."
    return 0
  fi

  echo "Removing Podman and all associated resources..."

  # Stop all running podman containers
  echo "Stopping all running containers..."
  podman stop $(podman ps -q)

  # Remove all containers
  echo "Removing all containers..."
  podman rm $(podman ps -a -q)

  # List and prompt to remove all images
  echo "Listing all Podman images..."
  podman images
  read -p "Do you want to remove all Podman images? (y/n): " remove_images
  if [[ "$remove_images" == "y" || "$remove_images" == "Y" ]]; then
    echo "Removing all Podman images..."
    podman rmi $(podman images -q)
  fi

  # Remove all volumes
  echo "Removing all volumes..."
  podman volume prune -f

  # Uninstall Podman and Podman Compose
  echo "Uninstalling Podman and Podman Compose..."
  sudo apt remove --purge -y podman podman-compose

  # Clean up residual files and dependencies
  echo "Removing residual files and dependencies..."
  sudo apt autoremove -y
  sudo apt clean

  # Remove Docker aliases
  echo "Removing Docker alias for Podman..."
  sed -i '/alias docker="podman"/d' "$HOME/.bashrc"
  sed -i '/alias docker-compose="podman compose"/d' "$HOME/.bashrc"
  source "$HOME/.bashrc"

  echo "Podman and all associated resources have been removed."
}
'

echo "This will be executed."

echo "Example usage:"
echo install_docker
echo start_docker
echo stop_docker
echo cleanup_docker
echo check_docker_installation
echo docker_login
# echo remove_podman



