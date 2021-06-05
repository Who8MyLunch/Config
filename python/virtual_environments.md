
# Virtual Python Environments


## Philosophy
- leave system Python for system activities
- all of my projects use a virtual environment separate from system
- if I ever need to install using system pip then make sure to use --user flag so that it installs to my folders.  This includes installing virtualenvwrapper.


# Notes

https://virtualenvwrapper.readthedocs.org/en/latest/command_ref.html

Install virtualenvwrapper (https://virtualenvwrapper.readthedocs.io/en/latest/install.html) to user space or to user's own custom compiled Python environment.

```bash
pip3 install --user -U pip setuptools
pip3 install --user virtualenvwrapper
```

Then follow the instructions included at the top of the shell script `~/.local/bin/virtualenvwrapper.sh`.  For me this involved the following steps:

```bash
mkdir ~/.virtualenvs
```

Add the following lines to my .bashrc:

# Python virtual environments

```bash
my_prefix=${HOME}/.local

export VIRTUALENVWRAPPER_PYTHON=${my_prefix}/bin/python3.8
export VIRTUALENVWRAPPER_VIRTUALENV=${my_prefix}/bin/virtualenv
source ${my_prefix}/bin/virtualenvwrapper.sh

export WORKON_HOME=${HOME}/.virtualenvs
export PROJECT_HOME=${HOME}/Projects
```

Source .bashrc or open a new shell and you should be all set.  Test it out by running `workon`.

You should see an empty list of available virtualenvironments.  See the docs for more details.


# Make a new env associated with a project

```bash
mkvirtualenv -a ~/Projects/super_cool  super_cool
```

May need to fiddle around to allow new virtualenvs to inherit from user or system Python
