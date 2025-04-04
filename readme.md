## Test App 

```sh
python chatgpt_test.py 
```

## Installed Packages and Their Purpose

| Package          | Purpose                          |
|------------------|---------                         |
| `pip`, `setuptools`, `wheel` | Package management and building distributions |
| `jupyter`        | Interactive notebook environment |
| `pytest`         | Testing framework for Python     |
| `hypothesis`     | Property-based testing           |
| `requests`       | HTTP requests module             |
| `flask`          | Lightweight web framework        |
| `fastapi`        | High-performance web framework for APIs |
| `pandas`         | Data analysis and manipulation   |
| `numpy`          | Numerical computing              |
| `matplotlib`     | Data visualization               |
| `seaborn`        | Statistical data visualization   |
| `scipy`          | Scientific computing             |
| `scikit-learn`   | Machine learning toolkit         |
| `beautifulsoup4` | Web scraping utility             |
| `lxml`           | XML and HTML parsing             |
| `scrapy`         | Web scraping framework           |
| `openai`         | OpenAI API interaction           |
| `regex`          | Regular expressions              |
| `pathlib`        | File system path management      |
| `tqdm`           | Progress bar utility             |

```txt
pip install jupyter         # includes ipykernel and other related packages. # most basic Jupyter Notebook experience.
pip install jupyterlab      # ext-generation env, also includes ipykernel and other necessary dependencies. # file browser, terminal access, and customizable layouts.

ipython kernel install --user --name=${VIRTUAL_ENV}  # Replace ${VIRTUAL_ENV} with your virtual environment name
    # --user: Installs the kernel for the current user.
    # --name=${VIRTUAL_ENV}: Specifies the display name of the kernel. Using the virtual environment's name is a good practice for clarity.

jupyter lab

    Popular Extensions:

        jupyterlab-git: Git integration.
        jupyterlab-variableinspector: to see variable values.
        jupyterlab-code-formatter: code formatting.
        jupyterlab-lsp: language server protocol support.
```        
