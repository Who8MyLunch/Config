# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc) for examples
# http://askubuntu.com/questions/155865/what-are-login-and-non-login-shells

# some more ls aliases
alias ls='ls -AFGh --show-control-chars --color=auto --group-directories-first'
alias la='ls -a --show-control-chars --color=auto --group-directories-first'
alias ll='ls -AFho --show-control-chars --color=auto --group-directories-first'
alias grep='grep --color=auto'

# https://pip.pypa.io/en/latest/user_guide.html#command-completion
# pip bash completion start
_pip_completion()
{
    COMPREPLY=( $( COMP_WORDS="${COMP_WORDS[*]}" \
                   COMP_CWORD=${COMP_CWORD} \
                   PIP_AUTO_COMPLETE=1 $1 ) )
}
complete -o default -F _pip_completion pip
# pip bash completion end


# UTF-8
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

# path modifications
export PATH=${HOME}/bin:${HOME}/.local/bin:${PATH}
export PATH=${HOME}/node_modules/.bin:${PATH}

# https://virtualenvwrapper.readthedocs.org/en/latest/#introduction
export VIRTUALENVWRAPPER_PYTHON=${HOME}/.local/bin/python3.6
export WORKON_HOME=${HOME}/.virtualenvs
export PROJECT_HOME=${HOME}/Projects

# source $HOME/.local/bin/virtualenvwrapper.sh


