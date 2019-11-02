
# Pip Configuration File

Edit user-level pip config files: http://pip.readthedocs.org/en/latest/user_guide.html#configuration

linux:   $HOME/.config/pip/pip.conf

windows: %APPDATA%\pip\pip.ini


See pip.conf for example contents.


# Build wheels from source

pip wheel package_name
pip wheel -r requirements.txt
