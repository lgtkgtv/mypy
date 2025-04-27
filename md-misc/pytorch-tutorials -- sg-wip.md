# pytorch-tutorials

git clone https://github.com/pytorch/tutorials.git pytorch-tutorials
cd pytorch-tutorials

sudo apt update
sudo apt install python3 python3-pip python3-venv python3-virtualenv

virtualenv venv
source venv/bin/activate
python -m pip install --upgrade pip
pip install jupyter
echo jupyter notebook

pip install -r requirements.txt



curl -LsSf https://astral.sh/uv/install.sh | sh
uv python list
uv python install 3.11

git clone https://github.com/pytorch/tutorials.git pytorch-tutorials
cd pytorch-tutorials

uv virtualenv --python 3.11 myvenv
source myvenv/bin/activate

uv pip install --upgrade pip
uv pip install -r requirements.txt

# uv pip install -e git+https://github.com/pytorch/pytorch_sphinx_theme.git#egg=pytorch_sphinx_theme

make docs

