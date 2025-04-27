#!/bin/bash

# Define the desired Python version (Ubuntu 24.04 default)
PYTHON_VERSION="3.12.3" # Using a specific patch version for consistency

# Define the name for the virtual environment
VENV_NAME="pytorch-env-${PYTHON_VERSION}"

# --- Check for pyenv ---
# Check if pyenv command exists
if ! command -v pyenv &> /dev/null
then
    echo "Error: pyenv is not installed or not in your PATH."
    echo "Please install pyenv first. See https://github.com/pyenv/pyenv#installation"
    exit 1
fi

# Check if pyenv is properly initialized (basic check)
if [ -z "$(pyenv root)" ]; then
    echo "Error: pyenv is not initialized."
    echo "Please initialize pyenv in your shell profile (e.g., ~/.bashrc or ~/.zshrc)."
    echo "Typically, this involves adding lines like:"
    echo 'export PYENV_ROOT="$HOME/.pyenv"'
    echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"'
    echo 'eval "$(pyenv init -)"'
    echo 'eval "$(pyenv virtualenv-init -)"'
    echo "Then restart your terminal or source your profile file."
    exit 1
fi

echo "pyenv found and initialized."

# --- Install Python version if needed ---
# Check if the desired Python version is already installed
if ! pyenv versions --bare | grep -q "^${PYTHON_VERSION}$"; then
    echo "Python version ${PYTHON_VERSION} not found. Installing..."
    pyenv install ${PYTHON_VERSION}
    if [ $? -ne 0 ]; then
        echo "Error: Failed to install Python ${PYTHON_VERSION}."
        exit 1
    fi
    echo "Python ${PYTHON_VERSION} installed successfully."
else
    echo "Python version ${PYTHON_VERSION} is already installed."
fi

# --- Create Virtual Environment ---
# Check if the virtual environment already exists
if pyenv virtualenvs --bare | grep -q "^${VENV_NAME}$"; then
    echo "Virtual environment '${VENV_NAME}' already exists."
else
    echo "Creating virtual environment '${VENV_NAME}' using Python ${PYTHON_VERSION}..."
    # Create the virtual environment using the specific Python version
    pyenv virtualenv ${PYTHON_VERSION} ${VENV_NAME}
    if [ $? -ne 0 ]; then
        echo "Error: Failed to create virtual environment '${VENV_NAME}'."
        exit 1
    fi
    echo "Virtual environment '${VENV_NAME}' created successfully."
fi

# --- Activate the Virtual Environment ---
# Note: Activating in a script only affects the script's environment.
# You will need to activate it manually in your terminal session.
echo "Activating virtual environment '${VENV_NAME}'..."
# Use pyenv activate to set up the environment for the current shell
# This line is commented out because it needs to be run interactively
# eval "$(pyenv activate ${VENV_NAME})"
echo "To activate this environment in your current shell, run: pyenv activate ${VENV_NAME}"

# --- Install PyTorch and related libraries (CPU-only) ---
echo "Installing PyTorch, torchvision, and torchaudio (CPU-only) into '${VENV_NAME}'..."

# Ensure the correct pip is used by explicitly calling the one in the venv
# We temporarily activate the environment for the pip install command
# This is a common pattern in scripts to ensure packages go into the correct venv
set -e # Exit immediately if a command exits with a non-zero status.
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
pyenv activate ${VENV_NAME}

# Install PyTorch, torchvision, and torchaudio (CPU-only)
# Using the specific index-url for CPU-only builds
pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cpu

# Deactivate the environment after installation in the script
# eval "$(pyenv deactivate)"
# set +e # Turn off exit on error

if [ $? -ne 0 ]; then
    echo "Error: Failed to install PyTorch and related libraries."
    echo "Please check the output above for details."
    # You might want to deactivate the environment here if the previous activation worked
    # eval "$(pyenv deactivate)"
    exit 1
fi

echo "PyTorch, torchvision, and torchaudio installed successfully in '${VENV_NAME}'."
echo "Setup complete."
echo "Remember to run 'pyenv activate ${VENV_NAME}' in any new terminal session where you want to use this environment."

# --- Verification Instructions ---
echo ""
echo "To verify the installation, activate the environment and run Python:"
echo "pyenv activate ${VENV_NAME}"
echo "python"
echo ">>> import torch"
echo ">>> print(torch.__version__)"
echo ">>> print(torch.cuda.is_available())" # Should print False for CPU-only
echo ">>> exit()"

