"""
ref: https://docs.astral.sh/uv/guides/projects/

## Creating a new project

### You can create a new Python project using the uv init command:

```
uv init hello-world
cd hello-world
```

### Alternatively, you can initialize a project in the working directory:

```
mkdir hello-world
cd hello-world
uv init
```

### uv will create the following files:
.
├── .python-version
├── README.md
├── hello.py
└── pyproject.toml

### Project structure

In addition to the files created by uv init, 
    uv will create a `virtual environment` and `uv.lock` file in the root of your project 
    the first time you run a project command, i.e., `uv run`, `uv sync`, or `uv lock`.

uv run hello.py

.
├── .venv
│   ├── bin
│   ├── lib
│   └── pyvenv.cfg
├── .python-version
├── README.md
├── hello.py
├── pyproject.toml
└── uv.lock
    


### pyproject.toml

The pyproject.toml contains metadata about your project:
pyproject.toml

[project]
name = "hello-world"
version = "0.1.0"
description = "Add your description here"
readme = "README.md"
dependencies = []
[tool.uv]
3.11

You'll also use this file to specify uv configuration options in a [tool.uv] section.
.python-version

### default Python version.

The `.python-version` file contains the project's default Python version. 
This file tells uv which Python version to use when creating the project's virtual environment.

"""

"""
uv run --no-project  example.py hello1 hello2 hello3
""" 

import os
import sys 

# /// script
# dependencies = [
#   "requests",
# ]
# [tool.uv]
# exclude-newer = "2023-10-16T00:00:00Z"
# ///

import requests

print("user homedir: " + os.path.expanduser("~"))

print("args: " +  " ".join(sys.argv[1:]))

print("python version: " + ".".join(map(str, sys.version_info[:3]))) # Python version

print("requests version: " + requests.__version__)
