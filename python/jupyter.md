

# Jupyter Lab Setup


https://ipywidgets.readthedocs.io/en/stable/user_install.html#installing-the-jupyterlab-extension


### node.js stuff

node.js is required to build Jupyter Lab extensions

Very easy to follow instructions for installing nodejs via system package manager:
- https://nodejs.org/en/download/package-manager/

The following commands are what I recently used:

```bash
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
sudo apt-get install -y nodejs
```

At some point will need to include details for updating yarn.




# IPython

## autoreload extension

http://ipython.readthedocs.io/en/stable/config/extensions/autoreload.html

%load_ext autoreload

%autoreload 2


# Front-End Configuration

http://jupyter-notebook.readthedocs.io/en/latest/frontend_config.html
