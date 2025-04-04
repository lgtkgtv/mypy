#!/bin/bash

# install python packages required for jupyter notebook 

python --version

# Install Development Tools Inside Virtualenv
pip install --upgrade pip setuptools wheel

pip install jupyterlab pytest hypothesis requests flask fastapi \
    pandas numpy matplotlib seaborn scipy scikit-learn beautifulsoup4 \
    lxml scrapy openai regex pathlib tqdm

# Verify Installation
python -c "import jupyter jupyterlab, pytest, hypothesis, flask, fastapi, pandas, numpy, sklearn, openai; print('All packages installed successfully!')"


ipython kernel install --user --name=${VIRTUAL_ENV}  # Replace ${VIRTUAL_ENV} with your virtual environment name
    # --user: Installs the kernel for the current user.
    # --name=${VIRTUAL_ENV}: Specifies the display name of the kernel. Using the virtual environment's name is a good practice for clarity.

echo "jupyter lab"

