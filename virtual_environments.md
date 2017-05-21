
# Virtual Python Environments

https://virtualenvwrapper.readthedocs.org/en/latest/command_ref.html

# make a new env associated with a project
mkvirtualenv -a ~/Projects/ipynb_widget_canvas canvas


Install virtualenvwrapper (https://virtualenvwrapper.readthedocs.io/en/latest/install.html) to user space or to user's own custom compiled Python environment.

    $ pip install --user virtualenvwrapper

Then follow the instructions included at the top of the shell script `~/.local/bin/virtualenvwrapper.sh`.  For me this involved the following steps:

    $ mkdir ~/.virtualenvs

Add the following lines to my .bashrc:

    $ export VIRTUALENVWRAPPER_PYTHON=${HOME}/.local/bin/python3.6
    $ export WORKON_HOME=${HOME}/.virtualenvs
    $ export PROJECT_HOME=${HOME}/Projects
    $ source ${HOME}/.local/bin/virtualenvwrapper.sh

Run source ~/.bashrc and you should be all set.  Test it out by running

    $ workon

You should see an empty list of available virtualenvironments.  See the docs for more details.

# Make a new env associated with a project
mkvirtualenv -a ~/Projects/ipynb_widget_canvas canvas


May need to fiddle around to allow new virtualenvs to inherit from user or system Python

