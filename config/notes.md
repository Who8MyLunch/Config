

# Notes

what's the difference between .profile, .bashrc, etc????

- https://superuser.com/questions/789448/choosing-between-bashrc-profile-bash-profile-etc

    # ~/.bash_profile
    #     - should be super-simple and just load .profile and .bashrc (in that order)
    #
    # ~/.profile
    #     - has the stuff NOT specifically related to bash, such as environment variables (PATH and friends)
    #     - anything that should be available to graphical applications OR to sh (or bash invoked as sh) MUST be in ~/.profile
    #     - anything that should be available only to login shells should go in ~/.profile
    #
    # ~/.bashrc
    #   - has anything you'd want at an interactive command line.  Command prompt, EDITOR variable, bash aliases for my use
    #   - must not output anything
    #
    # ~/.bash_login
    #   - must not exist!!!




- https://serverfault.com/questions/261802/what-are-the-functional-differences-between-profile-bash-profile-and-bashrc

