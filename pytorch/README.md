The bash script `./setup_pytorch_venv.sh` uses `pyenv` to set up a dedicated virtual environment for learning PyTorch 
on Ubuntu 24.04 LTS system (CPU-only).

```sh
pyenv activate pytorch-env-3.12
```

This script will:

    Ensure pyenv is set up (it won't install pyenv itself, but checks for its presence).
    Define the Python version (3.12, which is standard for Ubuntu 24.04).
    Install Python 3.12 using pyenv if you don't have it already.
    Create a new virtual environment named pytorch-env-3.12.
    Activate the new environment.
    Install the CPU-only versions of torch, torchvision, and torchaudio.


