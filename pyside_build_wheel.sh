#!/usr/bin/env bash

# Build PySide on linux.
# Assume the virtual environment has already been created
# http://pyside.readthedocs.org/en/latest/building/linux.html
# http://pyside.readthedocs.org/en/latest/building/linux.html#building-pyside-distribution-from-a-git-repository

# sudo apt-get install qt4-dev-tools

# Variables.
BASE="$PWD"
VENV="$BASE/venv"
PIP="$VENV/bin/pip"
PYTHON="$VENV/bin/python"

# assume pyside repo has already been cloned.
git clone https://github.com/PySide/pyside-setup.git pyside-setup

cd pyside-setup

# Clean out any old stuff.
rm -rf build dist

# Build PySide wheel.  This can take a long time...
$PYTHON setup.py bdist_wheel --qmake=/usr/bin/qmake-qt4 --standalone --version=1.2.4

# Now you can manually move the built wheel to preferred storage location.
