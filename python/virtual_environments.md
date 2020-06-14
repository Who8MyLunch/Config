
# Virtual Python Environments

https://virtualenvwrapper.readthedocs.org/en/latest/command_ref.html

Install virtualenvwrapper (https://virtualenvwrapper.readthedocs.io/en/latest/install.html) to user space or to user's own custom compiled Python environment.

    pip3 install --user -U pip setuptools
    pip3 install --user virtualenvwrapper


Then follow the instructions included at the top of the shell script `~/.local/bin/virtualenvwrapper.sh`.  For me this involved the following steps:

    mkdir ~/.virtualenvs

Add the following lines to my .bashrc:

# Python virtual environments

    my_prefix=${HOME}/.local

    export VIRTUALENVWRAPPER_PYTHON=${my_prefix}/bin/python3.8
    export VIRTUALENVWRAPPER_VIRTUALENV=${my_prefix}/bin/virtualenv
    source ${my_prefix}/bin/virtualenvwrapper.sh

    export WORKON_HOME=${HOME}/.virtualenvs
    export PROJECT_HOME=${HOME}/Projects

Source .bashrc or open a new shell and you should be all set.  Test it out by running

    workon

You should see an empty list of available virtualenvironments.  See the docs for more details.


# Make a new env associated with a project

    mkvirtualenv --system-site-packages -a ~/Projects/ipynb_widget_canvas canvas_env

May need to fiddle around to allow new virtualenvs to inherit from user or system Python
