
# Pip Configuration File

Edit user-level pip config files: http://pip.readthedocs.org/en/latest/user_guide.html#configuration

linux:   $HOME/.config/pip/pip.conf

windows: %APPDATA%\pip\pip.ini


Example pip.conf on linux:

        [global]
            timeout = 60
            wheel-dir = /home/pierre/wheelhouse
            find-links = /home/pierre/wheelhouse
            cache-dir = /home/pierre/wheelhouse/cache

        [list]
            format=columns

        [install]
            user = false

        [freeze]
            timeout = 10


# Build wheels from source

pip wheel package_name
pip wheel -r requirements.txt
