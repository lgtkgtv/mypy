#!/bin/bash

# Function to install pyenv
install_pyenv() {
  # Check if pyenv is already installed
  if command -v pyenv &> /dev/null; then
    echo "pyenv is already installed."
    return 0
  fi

  # Install dependencies for pyenv
  echo "Installing dependencies for pyenv..."
  sudo apt-get update
  sudo apt install -y make build-essential libssl-dev zlib1g-dev \
    libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm \
    libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev \
    libffi-dev liblzma-dev python3-pip git

  # Install pyenv
  echo "Installing pyenv..."
  curl https://pyenv.run | bash
  export PYENV_ROOT="$HOME/.pyenv"
  export PATH="$PYENV_ROOT/bin:$PATH"
  eval "$(pyenv init --path)"
  eval "$(pyenv virtualenv-init -)"

  : '
  # Configure pyenv in shell
  echo 'export PATH="$HOME/.pyenv/bin:$PATH"' >> "$HOME/.bashrc"
  echo 'eval "$(pyenv init --path)"' >> "$HOME/.bashrc"
  echo 'eval "$(pyenv init -)"' >> "$HOME/.bashrc"
  echo 'eval "$(pyenv virtualenv-init -)"' >> "$HOME/.bashrc"
  source "$HOME/.bashrc"
  ' 
}

activate_pyenv() {
 
  SCRIPT_DIR=$(dirname "$(readlink -f "$0")")
  PROJECT_ROOT=${PROJECT_ROOT:-${SCRIPT_DIR}}
  
  mkdir -p ${PROJECT_ROOT} 
  cd ${PROJECT_ROOT}

  if [ -z "$VIRTUAL_ENV" ]; then

    USE_PYTHON_VERSION=${USE_PYTHON_VERSION:-3.11}
    VIRTUAL_ENV="venv-$USE_PYTHON_VERSION"

    if ! pyenv versions --bare | grep -q "$USE_PYTHON_VERSION"; then
      echo "Installing Python $USE_PYTHON_VERSION..."
      pyenv install -s "$USE_PYTHON_VERSION"
    fi

    pyenv virtualenv ${USE_PYTHON_VERSION} ${VIRTUAL_ENV}
    pyenv local ${VIRTUAL_ENV}
  else
    echo "Already in ${VIRTUAL_ENV}"
  fi
  python --version    # Verify Python version
}

echo install_pyenv
echo activate_pyenv




